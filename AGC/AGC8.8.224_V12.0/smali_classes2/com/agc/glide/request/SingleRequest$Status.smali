.class final enum Lcom/agc/glide/request/SingleRequest$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/request/SingleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/request/SingleRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/request/SingleRequest$Status;

.field public static final enum CLEARED:Lcom/agc/glide/request/SingleRequest$Status;

.field public static final enum COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

.field public static final enum FAILED:Lcom/agc/glide/request/SingleRequest$Status;

.field public static final enum PENDING:Lcom/agc/glide/request/SingleRequest$Status;

.field public static final enum RUNNING:Lcom/agc/glide/request/SingleRequest$Status;

.field public static final enum WAITING_FOR_SIZE:Lcom/agc/glide/request/SingleRequest$Status;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/request/SingleRequest$Status;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->PENDING:Lcom/agc/glide/request/SingleRequest$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->RUNNING:Lcom/agc/glide/request/SingleRequest$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/agc/glide/request/SingleRequest$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->FAILED:Lcom/agc/glide/request/SingleRequest$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->CLEARED:Lcom/agc/glide/request/SingleRequest$Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/request/SingleRequest$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->PENDING:Lcom/agc/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/agc/glide/request/SingleRequest$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->RUNNING:Lcom/agc/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/agc/glide/request/SingleRequest$Status;

    const-string v1, "WAITING_FOR_SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/agc/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/agc/glide/request/SingleRequest$Status;

    const-string v1, "COMPLETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/agc/glide/request/SingleRequest$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->FAILED:Lcom/agc/glide/request/SingleRequest$Status;

    new-instance v0, Lcom/agc/glide/request/SingleRequest$Status;

    const-string v1, "CLEARED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/SingleRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->CLEARED:Lcom/agc/glide/request/SingleRequest$Status;

    invoke-static {}, Lcom/agc/glide/request/SingleRequest$Status;->$values()[Lcom/agc/glide/request/SingleRequest$Status;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/request/SingleRequest$Status;->$VALUES:[Lcom/agc/glide/request/SingleRequest$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/request/SingleRequest$Status;
    .locals 1

    const-class v0, Lcom/agc/glide/request/SingleRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/SingleRequest$Status;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/request/SingleRequest$Status;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/SingleRequest$Status;->$VALUES:[Lcom/agc/glide/request/SingleRequest$Status;

    invoke-virtual {v0}, [Lcom/agc/glide/request/SingleRequest$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/request/SingleRequest$Status;

    return-object v0
.end method
