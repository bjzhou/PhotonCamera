.class public final synthetic Ldvh;
.super Ljava/lang/Object;

# interfaces
.implements Ldve;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldvg;I)V
    .locals 0

    iput p2, p0, Ldvh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldvh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldvh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldvh;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(J[F)I
    .locals 3

    iget v0, p0, Ldvh;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldvh;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldye;

    invoke-virtual {v0, p1, p2}, Ldye;->a(J)Ljyp;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Ljyp;->b:Ljava/lang/Object;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ldvh;->a:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Ldvg;->a(J)F

    move-result p1

    aput p1, p3, v2

    return v1

    :cond_0
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_0
    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldxy;

    iget p2, p2, Ldxy;->b:F

    aput p2, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    const/high16 p1, 0x7fc00000    # Float.NaN

    aput p1, p3, v2

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
