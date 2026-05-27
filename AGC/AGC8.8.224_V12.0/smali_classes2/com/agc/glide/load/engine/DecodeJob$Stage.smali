.class final enum Lcom/agc/glide/load/engine/DecodeJob$Stage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/load/engine/DecodeJob$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field public static final enum DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field public static final enum ENCODE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field public static final enum FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field public static final enum INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field public static final enum RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field public static final enum SOURCE:Lcom/agc/glide/load/engine/DecodeJob$Stage;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/load/engine/DecodeJob$Stage;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/agc/glide/load/engine/DecodeJob$Stage;

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const-string v1, "RESOURCE_CACHE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const-string v1, "DATA_CACHE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const-string v1, "SOURCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const-string v1, "ENCODE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-static {}, Lcom/agc/glide/load/engine/DecodeJob$Stage;->$values()[Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->$VALUES:[Lcom/agc/glide/load/engine/DecodeJob$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/load/engine/DecodeJob$Stage;
    .locals 1

    const-class v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/engine/DecodeJob$Stage;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/load/engine/DecodeJob$Stage;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->$VALUES:[Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v0}, [Lcom/agc/glide/load/engine/DecodeJob$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/load/engine/DecodeJob$Stage;

    return-object v0
.end method
