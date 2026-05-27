.class public final synthetic Lfcq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lgxy;Lgxt;Lgyb;I)V
    .locals 0

    iput p4, p0, Lfcq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfcq;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfcq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfb;Ljava/util/ArrayList;Lhyz;I[B)V
    .locals 0

    iput p4, p0, Lfcq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfcq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfcq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvs;Ljava/util/function/Predicate;Lgec;I)V
    .locals 0

    iput p4, p0, Lfcq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfcq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfcq;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvs;Ljava/util/function/Predicate;Ljvs;I)V
    .locals 0

    iput p4, p0, Lfcq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfcq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfcq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;Ljwb;Ljwb;I)V
    .locals 0

    iput p4, p0, Lfcq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfcq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfcq;->a:Ljava/lang/Object;

    iput-object p3, p0, Lfcq;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lfcq;->d:I

    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfcq;->c:Ljava/lang/Object;

    iget-object v1, p0, Lfcq;->b:Ljava/lang/Object;

    iget-object v2, p0, Lfcq;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast v2, Lhyz;

    invoke-virtual {v2, p1}, Lhyz;->h(Landroid/content/pm/ResolveInfo;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v0, Lhfb;

    invoke-virtual {v0, p1}, Lhfb;->f(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lhyz;->i(Z)V

    invoke-virtual {v2}, Lhyz;->f()Lhgx;

    move-result-object p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lfcq;->c:Ljava/lang/Object;

    iget-object v1, p0, Lfcq;->b:Ljava/lang/Object;

    iget-object v2, p0, Lfcq;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast v2, Lhyz;

    invoke-virtual {v2, p1}, Lhyz;->h(Landroid/content/pm/ResolveInfo;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v0, Lhfb;

    invoke-virtual {v0, p1}, Lhfb;->f(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lhyz;->i(Z)V

    invoke-virtual {v2}, Lhyz;->f()Lhgx;

    move-result-object p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lfcq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lfcq;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfcq;->b:Ljava/lang/Object;

    check-cast p1, Lgxm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lgyb;

    check-cast v1, Lgxt;

    check-cast v0, Lgxy;

    invoke-interface {p1, v0, v1, v2}, Lgxm;->q(Lgxy;Lgxt;Lgyb;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lfcq;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfcq;->a:Ljava/lang/Object;

    iget-object v3, p0, Lfcq;->b:Ljava/lang/Object;

    check-cast p1, Lgeh;

    sget-object v4, Lgff;->a:Lnak;

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v4

    new-instance v5, Lgdl;

    invoke-direct {v5, p1, v1}, Lgdl;-><init>(Lgeh;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v5, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lgdl;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, Lgdl;-><init>(Lgeh;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v2, v0, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lgdl;

    const/16 v1, 0xe

    invoke-direct {v0, p1, v1}, Lgdl;-><init>(Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v3, v0, p1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lfcq;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfcq;->b:Ljava/lang/Object;

    iget-object v3, p0, Lfcq;->a:Ljava/lang/Object;

    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v4

    new-instance v5, Lccp;

    const/16 v6, 0x12

    invoke-direct {v5, v2, p1, v6}, Lccp;-><init>(Ljava/util/function/Predicate;Lgeh;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v5, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lcze;

    invoke-direct {v0, p1, v1}, Lcze;-><init>(Lgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v3, v0, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lfcq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lfcq;->b:Ljava/lang/Object;

    iget-object v2, p0, Lfcq;->c:Ljava/lang/Object;

    check-cast p1, Lgeh;

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v3

    new-instance v4, Lctn;

    check-cast v2, Lgec;

    const/4 v5, 0x3

    invoke-direct {v4, v1, p1, v2, v5}, Lctn;-><init>(Ljava/util/function/Predicate;Lgeh;Lgec;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v4, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lfcq;->d:I

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

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
