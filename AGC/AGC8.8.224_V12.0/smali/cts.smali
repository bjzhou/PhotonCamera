.class public final synthetic Lcts;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    iput p3, p0, Lcts;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcts;->b:Ljava/lang/Object;

    iput p2, p0, Lcts;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lctu;II)V
    .locals 0

    iput p3, p0, Lcts;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcts;->b:Ljava/lang/Object;

    iput p2, p0, Lcts;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcts;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcts;->b:Ljava/lang/Object;

    iget v1, p0, Lcts;->a:I

    check-cast p1, Lgxm;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v1}, Lgxm;->o(Landroid/graphics/Bitmap;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcts;->b:Ljava/lang/Object;

    iget v1, p0, Lcts;->a:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v1, p1, :cond_0

    check-cast v0, Lctu;

    iget-object p1, v0, Lctu;->f:Lkbc;

    iget-object v1, v0, Lctu;->c:Lcsc;

    iget-object v2, v0, Lctu;->e:Lcwx;

    iget-object v3, v0, Lctu;->d:Lcrz;

    iget-object v3, v3, Lcrz;->b:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lbze;->ae(Lcsc;Lcwx;F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Successive Frame Drops Trigger: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, v0, Lctu;->f:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, v0, Lctu;->h:Lbkc;

    invoke-virtual {p1}, Lbkc;->v()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcts;->b:Ljava/lang/Object;

    iget v1, p0, Lcts;->a:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v1, p1, :cond_1

    check-cast v0, Lctu;

    iget-object p1, v0, Lctu;->g:Lczf;

    invoke-virtual {p1}, Lczf;->b()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lcts;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
