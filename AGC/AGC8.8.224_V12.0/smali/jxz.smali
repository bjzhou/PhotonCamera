.class public final Ljxz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Z

.field public volatile b:Z

.field public c:Z

.field public d:Landroid/media/MediaFormat;

.field private e:I

.field private final f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljxz;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljxz;->a:Z

    iput-boolean p1, p0, Ljxz;->b:Z

    const/4 p1, -0x1

    iput p1, p0, Ljxz;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljxz;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ljxz;->d:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Ljxz;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljxz;->e:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Track is not yet added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxz;->c:Z

    return-void
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Ljxz;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput p1, p0, Ljxz;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljxz;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljxz;->b:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This track is forbidden."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljxz;

    invoke-virtual {p0}, Ljxz;->a()I

    move-result v0

    invoke-virtual {p1}, Ljxz;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Ljxz;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Ljxz;->f:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-boolean v0, p0, Ljxz;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljxz;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1

    :pswitch_1
    iget-boolean v0, p0, Ljxz;->a:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
