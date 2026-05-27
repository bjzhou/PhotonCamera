.class public final Lfmv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcie;I)V
    .locals 0

    iput p2, p0, Lfmv;->b:I

    iput-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lfmv;->b:I

    iput-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lige;I)V
    .locals 0

    iput p2, p0, Lfmv;->b:I

    iput-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    iget p1, p0, Lfmv;->b:I

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    iget v0, p0, Lfmv;->b:I

    const/16 v1, 0xb4

    packed-switch v0, :pswitch_data_0

    if-nez p1, :cond_2

    iget-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast p1, Lige;

    invoke-virtual {p1}, Lige;->a()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast v0, Lige;

    iget-object v0, v0, Lige;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast p1, Lige;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lige;->b(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast p1, Lcie;

    iget-object p1, p1, Lcie;->x:Landroid/view/WindowManager;

    invoke-static {p1}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result p1

    iget-object v0, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast v0, Lcie;

    iget v2, v0, Lcie;->m:I

    sub-int v2, p1, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_0

    iget-object v0, v0, Lcie;->o:Lidu;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lidu;->c()V

    iget-object v0, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast v0, Lcie;

    iget-object v0, v0, Lcie;->r:Lidr;

    invoke-interface {v0}, Lidr;->g()V

    :cond_0
    iget-object v0, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast v0, Lcie;

    iput p1, v0, Lcie;->m:I

    return-void

    :pswitch_1
    iget-object p1, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->U:Lcvr;

    invoke-virtual {p1}, Lcvr;->F()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result p1

    iget-object v0, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget v2, v0, Lfng;->y:I

    sub-int v2, p1, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lfng;->I()V

    :cond_1
    iget-object v0, p0, Lfmv;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iput p1, v0, Lfng;->y:I

    return-void

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    iget p1, p0, Lfmv;->b:I

    return-void
.end method
