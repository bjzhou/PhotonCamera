.class public final synthetic Lhsr;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Logd;Lhsu;I)V
    .locals 0

    iput p3, p0, Lhsr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhsr;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lhsr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhsr;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lhsr;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhsr;->b:Ljava/lang/Object;

    iget-object v1, p0, Lhsr;->a:Ljava/lang/Object;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ldcc;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ldcc;-><init>(Ldbf;I)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhsr;->a:Ljava/lang/Object;

    iget-object v1, p0, Lhsr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchj;

    invoke-interface {v0, v1}, Lchj;->c(Lchb;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
