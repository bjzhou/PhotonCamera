.class public Lbpe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lbze;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcac;->a:Lbze;

    iput-object v0, p0, Lbpe;->a:Lbze;

    return-void
.end method


# virtual methods
.method public final a()Lbpe;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpe;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbpe;->a()Lbpe;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbpe;

    if-eqz v0, :cond_0

    check-cast p1, Lbpe;

    iget-object v0, p0, Lbpe;->a:Lbze;

    iget-object p1, p1, Lbpe;->a:Lbze;

    invoke-static {v0, p1}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lbpe;->a:Lbze;

    invoke-virtual {v0}, Lbze;->hashCode()I

    move-result v0

    return v0
.end method
