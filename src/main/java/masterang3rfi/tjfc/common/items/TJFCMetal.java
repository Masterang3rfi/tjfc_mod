package masterang3rfi.tjfc.common.items;

import masterang3rfi.tjfc.common.register.TJFCItems;

import java.util.function.Predicate;

public class TJFCMetal {
    public enum Default {
        ALUMINUM("tfc_ie_addon", true, false, true, false),
        BISMUTH("tfc", true, false, false, false),
        BISMUTH_BRONZE("tfc", false, false, false, false),
        BLACK_BRONZE("tfc", false, false,false, false),
        BLACK_STEEL("tfc", false, false,false, false),
        BLUE_STEEL("tfc", false, false,false, false),
        BRASS("tfc", false, false,false, false),
        BRONZE("tfc", false, false,false, false),
        CAST_IRON("tfc", true, false,false, false),
        CHROMIUM("firmalife", true, false,false, false),
        CONSTANTAN("tfc_ie_addon", false, false,false, true),
        COPPER("tfc", true, false,true, false),
        ELECTRUM("tfc_ie_addon", false, false, true, true),
        GOLD("tfc", true, false, false, false),
        HIGH_CARBON_BLACK_STEEL("tfc", false, false,false, false),
        HIGH_CARBON_BLUE_STEEL("tfc", false, false,false, false),
        HIGH_CARBON_RED_STEEL("tfc", false, false,false, false),
        HIGH_CARBON_STEEL("tfc", false, false,false, false),
        LEAD("tfc_ie_addon", true, false,true, true),
        NICKEL("tfc", true, false,false, false),
        PIG_IRON("tfc", false, false,false, false),
        RED_STEEL("tfc", false, false,false, false),
        ROSE_GOLD("tfc", false, false,false, false),
        SILVER("tfc", true, false,false, false),
        STAINLESS_STEEL("firmalife", false, false,false, false),
        STEEL("tfc", false, true,true, false),
        STERLING_SILVER("tfc", false, false,false, false),
        TIN("tfc", true, false,false, false),
        UNKNOWN("tfc", false, false,false, false),
        URANIUM("tfc_ie_addon", true, false,false, false),
        WEAK_BLUE_STEEL("tfc", false, false,false, false),
        WEAK_RED_STEEL("tfc", false, false,false, false),
        WEAK_STEEL("tfc", false, false,false, false),
        WROUGHT_IRON("tfc", false, true,false, false),
        ZINC("tfc", true, false,false, false);

        public boolean hasOre() {
            return ore;
        }

        public boolean hasHardware() {
            return hardware;
        }

        public boolean hasWire() {
            return wiring;
        }

        public boolean hasNewParts() {
            return newParts;
        }

        public String getModID() {
            return modID;
        }

        final String modID;
        final boolean ore;
        final boolean hardware;
        final boolean wiring;
        final boolean newParts;

        Default(String modID, boolean ore, boolean hardware, boolean wiring, boolean newParts) {
            this.modID = modID;
            this.ore = ore;
            this.hardware = hardware;
            this.wiring = wiring;
            this.newParts = newParts;
        }
    }

    private enum Type {
        DEFAULT((metal) -> true),
        HARDWARE(TJFCMetal.Default::hasHardware),
        ORE(TJFCMetal.Default::hasOre),
        WIRE(TJFCMetal.Default::hasWire),
        PARTS(TJFCMetal.Default::hasNewParts);


        private final Predicate<TJFCMetal.Default> predicate;

        Type(Predicate<TJFCMetal.Default> predicate) {
            this.predicate = predicate;
        }

        boolean hasType(TJFCMetal.Default metal) {
            return this.predicate.test(metal);
        }
    }

    public enum ItemType {
        BOLT(Type.HARDWARE),
        DOUBLE_INGOT(Type.PARTS),
        DOUBLE_SHEET(Type.PARTS),
        ROD(Type.PARTS),
        SCRAP(Type.ORE),
        SCREW(Type.HARDWARE),
        SHEET(Type.PARTS),
        STRIP(Type.HARDWARE),
        WIRE(Type.WIRE);

        private final TJFCMetal.Type type;

        private ItemType(TJFCMetal.Type type) {
            this.type = type;
        }

        public boolean has(TJFCMetal.Default metal) {
            return this.type.hasType(metal);
        }
    }
}
