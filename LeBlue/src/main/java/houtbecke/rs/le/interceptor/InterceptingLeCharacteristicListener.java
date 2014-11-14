package houtbecke.rs.le.interceptor;

import java.util.UUID;

import houtbecke.rs.le.LeCharacteristicListener;
import houtbecke.rs.le.LeGattCharacteristic;
import houtbecke.rs.le.LeRemoteDevice;

public class InterceptingLeCharacteristicListener extends BaseIntercepting implements LeCharacteristicListener {

    public final LeCharacteristicListener leCharacteristicListener;

    public InterceptingLeCharacteristicListener(LeCharacteristicListener leCharacteristicListener, LeInterceptor leInterceptor) {
        super(leInterceptor);
        this.leCharacteristicListener = leCharacteristicListener;
    }

    @Override
    public void leCharacteristicChanged(UUID uuid, LeRemoteDevice remoteDevice, LeGattCharacteristic characteristic) {
        synchronized(leInterceptor) {
            InterceptingLeRemoteDevice iLeRemoteDevice = leInterceptor.getInterceptingLeRemoteDevice(remoteDevice);
            InterceptingLeGattCharacteristic iLeGattCharacteristic  = leInterceptor.getInterceptingLeGattCharacteristic(characteristic);
            leCharacteristicListener.leCharacteristicChanged(uuid,iLeRemoteDevice,iLeGattCharacteristic );
            leInterceptor.characteristicChanged(this, uuid, iLeRemoteDevice,iLeGattCharacteristic );
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;

        while (o instanceof InterceptingLeCharacteristicListener)
            o = ((InterceptingLeCharacteristicListener) o).leCharacteristicListener;

        return o instanceof LeCharacteristicListener && o.equals(leCharacteristicListener);
    }

    @Override
    public int hashCode() {
        return leCharacteristicListener.hashCode();
    }
}