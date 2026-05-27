.class public final Lbok;
.super Lbpe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbpe;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbok;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lbpe;

    if-eqz v0, :cond_0

    check-cast p1, Lbpe;

    iget-object v0, p0, Lbpe;->a:Lbze;

    iget-object p1, p1, Lbpe;->a:Lbze;

    invoke-static {v0, p1}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
