.class public final enum Lcom/agc/asv/WB$WBType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/asv/WB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WBType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/asv/WB$WBType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/asv/WB$WBType;

.field public static final enum AUTO:Lcom/agc/asv/WB$WBType;

.field public static final enum INITN:Lcom/agc/asv/WB$WBType;

.field public static final enum KAHUI:Lcom/agc/asv/WB$WBType;

.field public static final enum SHADOW:Lcom/agc/asv/WB$WBType;


# direct methods
.method private static synthetic $values()[Lcom/agc/asv/WB$WBType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/agc/asv/WB$WBType;

    sget-object v1, Lcom/agc/asv/WB$WBType;->INITN:Lcom/agc/asv/WB$WBType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/asv/WB$WBType;->KAHUI:Lcom/agc/asv/WB$WBType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/asv/WB$WBType;->SHADOW:Lcom/agc/asv/WB$WBType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/asv/WB$WBType;

    const-string v1, "INITN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/asv/WB$WBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/asv/WB$WBType;->INITN:Lcom/agc/asv/WB$WBType;

    new-instance v0, Lcom/agc/asv/WB$WBType;

    const-string v1, "AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/asv/WB$WBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    new-instance v0, Lcom/agc/asv/WB$WBType;

    const-string v1, "KAHUI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/asv/WB$WBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/asv/WB$WBType;->KAHUI:Lcom/agc/asv/WB$WBType;

    new-instance v0, Lcom/agc/asv/WB$WBType;

    const-string v1, "SHADOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agc/asv/WB$WBType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/asv/WB$WBType;->SHADOW:Lcom/agc/asv/WB$WBType;

    invoke-static {}, Lcom/agc/asv/WB$WBType;->$values()[Lcom/agc/asv/WB$WBType;

    move-result-object v0

    sput-object v0, Lcom/agc/asv/WB$WBType;->$VALUES:[Lcom/agc/asv/WB$WBType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/asv/WB$WBType;
    .locals 1

    const-class v0, Lcom/agc/asv/WB$WBType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/asv/WB$WBType;

    return-object p0
.end method

.method public static values()[Lcom/agc/asv/WB$WBType;
    .locals 1

    sget-object v0, Lcom/agc/asv/WB$WBType;->$VALUES:[Lcom/agc/asv/WB$WBType;

    invoke-virtual {v0}, [Lcom/agc/asv/WB$WBType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/asv/WB$WBType;

    return-object v0
.end method
