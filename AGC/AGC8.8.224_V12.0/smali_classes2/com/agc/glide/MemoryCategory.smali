.class public final enum Lcom/agc/glide/MemoryCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/MemoryCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/MemoryCategory;

.field public static final enum HIGH:Lcom/agc/glide/MemoryCategory;

.field public static final enum LOW:Lcom/agc/glide/MemoryCategory;

.field public static final enum NORMAL:Lcom/agc/glide/MemoryCategory;


# instance fields
.field private final multiplier:F


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/MemoryCategory;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/agc/glide/MemoryCategory;

    sget-object v1, Lcom/agc/glide/MemoryCategory;->LOW:Lcom/agc/glide/MemoryCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/MemoryCategory;->NORMAL:Lcom/agc/glide/MemoryCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/MemoryCategory;->HIGH:Lcom/agc/glide/MemoryCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/agc/glide/MemoryCategory;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/agc/glide/MemoryCategory;->LOW:Lcom/agc/glide/MemoryCategory;

    new-instance v0, Lcom/agc/glide/MemoryCategory;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/agc/glide/MemoryCategory;->NORMAL:Lcom/agc/glide/MemoryCategory;

    new-instance v0, Lcom/agc/glide/MemoryCategory;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/glide/MemoryCategory;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/agc/glide/MemoryCategory;->HIGH:Lcom/agc/glide/MemoryCategory;

    invoke-static {}, Lcom/agc/glide/MemoryCategory;->$values()[Lcom/agc/glide/MemoryCategory;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/MemoryCategory;->$VALUES:[Lcom/agc/glide/MemoryCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/agc/glide/MemoryCategory;->multiplier:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/MemoryCategory;
    .locals 1

    const-class v0, Lcom/agc/glide/MemoryCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/MemoryCategory;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/MemoryCategory;
    .locals 1

    sget-object v0, Lcom/agc/glide/MemoryCategory;->$VALUES:[Lcom/agc/glide/MemoryCategory;

    invoke-virtual {v0}, [Lcom/agc/glide/MemoryCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/MemoryCategory;

    return-object v0
.end method


# virtual methods
.method public getMultiplier()F
    .locals 1

    iget v0, p0, Lcom/agc/glide/MemoryCategory;->multiplier:F

    return v0
.end method
