.class final enum Lcom/agc/widget/cure/CureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/widget/cure/CureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/widget/cure/CureType;

.field public static final enum SINGLE:Lcom/agc/widget/cure/CureType;

.field public static final enum SWITCH:Lcom/agc/widget/cure/CureType;


# direct methods
.method private static synthetic $values()[Lcom/agc/widget/cure/CureType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/agc/widget/cure/CureType;

    sget-object v1, Lcom/agc/widget/cure/CureType;->SWITCH:Lcom/agc/widget/cure/CureType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/widget/cure/CureType;->SINGLE:Lcom/agc/widget/cure/CureType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/widget/cure/CureType;

    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/cure/CureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/widget/cure/CureType;->SWITCH:Lcom/agc/widget/cure/CureType;

    new-instance v0, Lcom/agc/widget/cure/CureType;

    const-string v1, "SINGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/widget/cure/CureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/widget/cure/CureType;->SINGLE:Lcom/agc/widget/cure/CureType;

    invoke-static {}, Lcom/agc/widget/cure/CureType;->$values()[Lcom/agc/widget/cure/CureType;

    move-result-object v0

    sput-object v0, Lcom/agc/widget/cure/CureType;->$VALUES:[Lcom/agc/widget/cure/CureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/widget/cure/CureType;
    .locals 1

    const-class v0, Lcom/agc/widget/cure/CureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/widget/cure/CureType;

    return-object p0
.end method

.method public static values()[Lcom/agc/widget/cure/CureType;
    .locals 1

    sget-object v0, Lcom/agc/widget/cure/CureType;->$VALUES:[Lcom/agc/widget/cure/CureType;

    invoke-virtual {v0}, [Lcom/agc/widget/cure/CureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/widget/cure/CureType;

    return-object v0
.end method
