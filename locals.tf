locals{
    vnet={
        vnet1={
            address_prefix=["10.0.0.0/16"]
        }
        vnet2={
            address_prefix=["10.1.0.0/16"]
        }
    }

    subnet={
        subnet1={
            address_prefix=["10.0.0.0/24"]
            vnet_name="vnet1"
        }
        subnet2={
            address_prefix=["10.1.0.0/24"]
            vnet_name="vnet2"
        }
    }

    virtual_machine={
        vm1={
            nic_name="vm1-nic",
            ip_config_name="vm1-config",
            subnet_name="subnet1",
            storage_od_disk_name="myosdisk1",
            computer_name="vipin"
        }

        vm2={
            nic_name="vm2-nic",
            ip_config_name="vm2-config",
            subnet_name="subnet2",
            storage_od_disk_name="myosdisk2",
            computer_name="vipin-ka-dost"
        }
    }

}