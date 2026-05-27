.class public final enum Lcom/agc/glide/request/RequestCoordinator$RequestState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/request/RequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/request/RequestCoordinator$RequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field public static final enum CLEARED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field public static final enum FAILED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field public static final enum PAUSED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field public static final enum RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field public static final enum SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;


# instance fields
.field private final isComplete:Z


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/request/RequestCoordinator$RequestState;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/agc/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    new-instance v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const-string v1, "PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/agc/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    new-instance v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const-string v1, "CLEARED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/agc/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    new-instance v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    new-instance v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/glide/request/RequestCoordinator$RequestState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    invoke-static {}, Lcom/agc/glide/request/RequestCoordinator$RequestState;->$values()[Lcom/agc/glide/request/RequestCoordinator$RequestState;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->$VALUES:[Lcom/agc/glide/request/RequestCoordinator$RequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->isComplete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/request/RequestCoordinator$RequestState;
    .locals 1

    const-class v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestCoordinator$RequestState;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/request/RequestCoordinator$RequestState;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->$VALUES:[Lcom/agc/glide/request/RequestCoordinator$RequestState;

    invoke-virtual {v0}, [Lcom/agc/glide/request/RequestCoordinator$RequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/request/RequestCoordinator$RequestState;

    return-object v0
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->isComplete:Z

    return v0
.end method
