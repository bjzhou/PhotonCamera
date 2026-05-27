.class public final enum Lcom/agc/glide/load/DataSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/load/DataSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/load/DataSource;

.field public static final enum DATA_DISK_CACHE:Lcom/agc/glide/load/DataSource;

.field public static final enum LOCAL:Lcom/agc/glide/load/DataSource;

.field public static final enum MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

.field public static final enum REMOTE:Lcom/agc/glide/load/DataSource;

.field public static final enum RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/load/DataSource;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/agc/glide/load/DataSource;

    sget-object v1, Lcom/agc/glide/load/DataSource;->LOCAL:Lcom/agc/glide/load/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/DataSource;->REMOTE:Lcom/agc/glide/load/DataSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/load/DataSource;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/DataSource;->LOCAL:Lcom/agc/glide/load/DataSource;

    new-instance v0, Lcom/agc/glide/load/DataSource;

    const-string v1, "REMOTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/DataSource;->REMOTE:Lcom/agc/glide/load/DataSource;

    new-instance v0, Lcom/agc/glide/load/DataSource;

    const-string v1, "DATA_DISK_CACHE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    new-instance v0, Lcom/agc/glide/load/DataSource;

    const-string v1, "RESOURCE_DISK_CACHE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    new-instance v0, Lcom/agc/glide/load/DataSource;

    const-string v1, "MEMORY_CACHE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    invoke-static {}, Lcom/agc/glide/load/DataSource;->$values()[Lcom/agc/glide/load/DataSource;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/DataSource;->$VALUES:[Lcom/agc/glide/load/DataSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/load/DataSource;
    .locals 1

    const-class v0, Lcom/agc/glide/load/DataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/DataSource;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/load/DataSource;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/DataSource;->$VALUES:[Lcom/agc/glide/load/DataSource;

    invoke-virtual {v0}, [Lcom/agc/glide/load/DataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/load/DataSource;

    return-object v0
.end method
