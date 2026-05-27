.class public final synthetic Lirx;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lisi;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkcx;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkgw;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkgz;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrb;I)V
    .locals 0

    iput p2, p0, Lirx;->b:I

    iput-object p1, p0, Lirx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget v0, p0, Lirx;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lrb;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    check-cast v0, Lkgz;

    invoke-virtual {v0}, Lkgz;->d()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    check-cast v0, Lkgw;

    invoke-virtual {v0}, Lkgw;->p()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    check-cast v0, Lkcx;

    invoke-virtual {v0}, Lkcx;->f()V

    :pswitch_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    invoke-virtual {v0}, Lisi;->n()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lirx;->a:Ljava/lang/Object;

    check-cast v0, Lisi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lisi;->I(Z)V

    invoke-virtual {v0}, Lisi;->p()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
