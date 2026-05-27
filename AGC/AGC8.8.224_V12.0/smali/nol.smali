.class public final Lnol;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lnnn;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p3, p0, Lnol;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnol;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnol;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnou;Ljava/util/concurrent/Future;I)V
    .locals 0

    iput p3, p0, Lnol;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnol;->a:Ljava/lang/Object;

    iput-object p2, p0, Lnol;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lnol;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iput-object v1, p0, Lnol;->a:Ljava/lang/Object;

    iput-object v1, p0, Lnol;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lnol;->a:Ljava/lang/Object;

    iget-object v2, p0, Lnol;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lnsy;->M(Lnou;Ljava/util/concurrent/Future;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
