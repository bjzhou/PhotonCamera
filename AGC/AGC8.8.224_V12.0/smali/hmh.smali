.class public final synthetic Lhmh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljvs;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljwb;Ljvs;Ljava/util/function/Predicate;Lhmb;I)V
    .locals 0

    iput p5, p0, Lhmh;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhmh;->c:Ljava/lang/Object;

    iput-object p2, p0, Lhmh;->d:Ljvs;

    iput-object p3, p0, Lhmh;->a:Ljava/util/function/Predicate;

    iput-object p4, p0, Lhmh;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;Logd;Ljava/util/function/Predicate;Ljwb;I)V
    .locals 0

    iput p5, p0, Lhmh;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhmh;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhmh;->c:Ljava/lang/Object;

    iput-object p3, p0, Lhmh;->a:Ljava/util/function/Predicate;

    iput-object p4, p0, Lhmh;->d:Ljvs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lhmh;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhmh;->c:Ljava/lang/Object;

    iget-object v1, p0, Lhmh;->d:Ljvs;

    iget-object v2, p0, Lhmh;->a:Ljava/util/function/Predicate;

    iget-object v3, p0, Lhmh;->b:Ljava/lang/Object;

    check-cast p1, Lgeh;

    sget-object v4, Lgff;->a:Lnak;

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v4

    new-instance v5, Lgdl;

    const/16 v6, 0xb

    invoke-direct {v5, p1, v6}, Lgdl;-><init>(Lgeh;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-interface {v0, v5, v6}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lecf;

    const/16 v5, 0xf

    invoke-direct {v0, v2, p1, v5}, Lecf;-><init>(Ljava/util/function/Predicate;Lgeh;I)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-interface {v1, v0, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    check-cast v3, Lhmb;

    invoke-virtual {v3}, Lhmb;->a()Ljvs;

    move-result-object v0

    new-instance v1, Lecf;

    const/16 v3, 0x10

    invoke-direct {v1, v2, p1, v3}, Lecf;-><init>(Ljava/util/function/Predicate;Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhmh;->b:Ljava/lang/Object;

    iget-object v1, p0, Lhmh;->c:Ljava/lang/Object;

    iget-object v2, p0, Lhmh;->a:Ljava/util/function/Predicate;

    iget-object v3, p0, Lhmh;->d:Ljvs;

    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljvs;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldww;

    invoke-interface {v0}, Ldww;->n()Ljvs;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v5}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    new-instance v5, Lglh;

    const/16 v6, 0xa

    invoke-direct {v5, v2, p1, v6}, Lglh;-><init>(Ljava/util/function/Predicate;Lgeh;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v5, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v0

    new-instance v2, Lhml;

    invoke-direct {v2, p1, v1}, Lhml;-><init>(Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v3, v2, p1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lhmh;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
