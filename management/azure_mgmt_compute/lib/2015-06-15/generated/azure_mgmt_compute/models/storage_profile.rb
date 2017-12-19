# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # Specifies the storage settings for the virtual machine disks.
    #
    class StorageProfile

      include MsRestAzure

      # @return [ImageReference] Specifies information about the image to use.
      # You can specify information about platform images, marketplace images,
      # or virtual machine images. This element is required when you want to
      # use a platform image, marketplace image, or virtual machine image, but
      # is not used in other creation operations.
      attr_accessor :image_reference

      # @return [OSDisk] Specifies information about the operating system disk
      # used by the virtual machine. <br><br> For more information about disks,
      # see [About disks and VHDs for Azure virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      attr_accessor :os_disk

      # @return [Array<DataDisk>] Specifies the parameters that are used to add
      # a data disk to a virtual machine. <br><br> For more information about
      # disks, see [About disks and VHDs for Azure virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      attr_accessor :data_disks


      #
      # Mapper for StorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageProfile',
          type: {
            name: 'Composite',
            class_name: 'StorageProfile',
            model_properties: {
              image_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'ImageReference'
                }
              },
              os_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDisk',
                type: {
                  name: 'Composite',
                  class_name: 'OSDisk'
                }
              },
              data_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataDisk'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
