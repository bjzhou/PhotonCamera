.class public final Lqw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CXCP-Camera2"

    iput-object v0, p0, Lqw;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Lqw;
    .locals 1

    new-instance v0, Lqw;

    invoke-direct {v0}, Lqw;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lqw;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    check-cast p1, Lqw;

    iget-object p1, p1, Lqw;->a:Ljava/lang/String;

    const-string v0, "CXCP-Camera2"

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lqw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraBackendId(value=CXCP-Camera2)"

    return-object v0
.end method
