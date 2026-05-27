.class public final Lqj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Lqj;

.field public static final synthetic b:Lqj;

.field public static final synthetic c:Lqj;

.field public static final synthetic d:Lqj;


# instance fields
.field private final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqj;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lqj;-><init>(I)V

    sput-object v0, Lqj;->d:Lqj;

    new-instance v0, Lqj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqj;-><init>(I)V

    sput-object v0, Lqj;->c:Lqj;

    new-instance v0, Lqj;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lqj;-><init>(I)V

    sput-object v0, Lqj;->b:Lqj;

    new-instance v0, Lqj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lqj;-><init>(I)V

    sput-object v0, Lqj;->a:Lqj;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lqj;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lqj;->e:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, Lkan;->a:Ljava/util/logging/Logger;

    return-void

    :pswitch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_3
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_4
    invoke-static {}, Lqk;->b()Lqk;

    move-result-object v0

    iget-object v0, v0, Lqk;->b:Lgh;

    check-cast v0, Lqm;

    iget-object v0, v0, Lqm;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

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
