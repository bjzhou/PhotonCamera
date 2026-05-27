.class public final synthetic Lfai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfai;->a:I

    iput p2, p0, Lfai;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lfai;->a:I

    iget v1, p0, Lfai;->b:I

    check-cast p1, Lfaz;

    sget v2, Lfak;->l:I

    instance-of v2, p1, Lfal;

    if-eqz v2, :cond_0

    check-cast p1, Lfal;

    invoke-interface {p1, v0, v1}, Lfal;->b(II)V

    :cond_0
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
