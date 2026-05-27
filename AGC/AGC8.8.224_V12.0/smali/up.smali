.class public final Lup;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lqy;

.field public final b:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Lqy;I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p4, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lup;->b:Landroidx/wear/ambient/AmbientDelegate;

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lup;->a:Lqy;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lup;

    iget-object v1, p0, Lup;->b:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, p1, Lup;->b:Landroidx/wear/ambient/AmbientDelegate;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lup;->a:Lqy;

    iget-object p1, p1, Lup;->a:Lqy;

    invoke-static {v1, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lup;->b:Landroidx/wear/ambient/AmbientDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lup;->a:Lqy;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v2, Lqy;->a:I

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenVirtualCameraResult(activeCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lup;->b:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastCameraError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lup;->a:Lqy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
