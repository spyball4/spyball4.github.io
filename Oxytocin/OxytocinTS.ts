class OxytocinTS {
    private physicalAction: string;
    private mentalAction: string;

    constructor(physicalAction: string, mentalAction: string) {
        this.physicalAction = physicalAction;
        this.mentalAction = mentalAction;
    }

    getPhysicalAction(): string {
        return this.physicalAction;
    }

    getMentalAction(): string {
        return this.mentalAction;
    }
}

console.log("Hello, World!");