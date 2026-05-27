.class public final enum Lcom/agc/glide/Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/Priority;

.field public static final enum HIGH:Lcom/agc/glide/Priority;

.field public static final enum IMMEDIATE:Lcom/agc/glide/Priority;

.field public static final enum LOW:Lcom/agc/glide/Priority;

.field public static final enum NORMAL:Lcom/agc/glide/Priority;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/Priority;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/agc/glide/Priority;

    sget-object v1, Lcom/agc/glide/Priority;->IMMEDIATE:Lcom/agc/glide/Priority;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/Priority;->HIGH:Lcom/agc/glide/Priority;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/Priority;->NORMAL:Lcom/agc/glide/Priority;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/Priority;->LOW:Lcom/agc/glide/Priority;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/Priority;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/Priority;->IMMEDIATE:Lcom/agc/glide/Priority;

    new-instance v0, Lcom/agc/glide/Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/Priority;->HIGH:Lcom/agc/glide/Priority;

    new-instance v0, Lcom/agc/glide/Priority;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/Priority;->NORMAL:Lcom/agc/glide/Priority;

    new-instance v0, Lcom/agc/glide/Priority;

    const-string v1, "LOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/Priority;->LOW:Lcom/agc/glide/Priority;

    invoke-static {}, Lcom/agc/glide/Priority;->$values()[Lcom/agc/glide/Priority;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/Priority;->$VALUES:[Lcom/agc/glide/Priority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/Priority;
    .locals 1

    const-class v0, Lcom/agc/glide/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/Priority;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/Priority;
    .locals 1

    sget-object v0, Lcom/agc/glide/Priority;->$VALUES:[Lcom/agc/glide/Priority;

    invoke-virtual {v0}, [Lcom/agc/glide/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/Priority;

    return-object v0
.end method
