.class public final synthetic Lich;
.super Ljava/lang/Object;

# interfaces
.implements Lice;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfou;I)V
    .locals 0

    iput p2, p0, Lich;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lich;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lici;I)V
    .locals 0

    iput p2, p0, Lich;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lich;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Licj;I)V
    .locals 0

    iput p2, p0, Lich;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lich;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    iget v0, p0, Lich;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lich;->a:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    check-cast v0, Licj;

    iget-object p1, v0, Licj;->b:Lgzi;

    const-string p2, "face_retouching_hint"

    invoke-virtual {p1, p2, v1}, Lgzi;->l(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lich;->a:Ljava/lang/Object;

    check-cast p1, Lfou;

    iput v1, p1, Lfou;->i:I

    return-void

    :pswitch_1
    iget-object p1, p0, Lich;->a:Ljava/lang/Object;

    check-cast p1, Lici;

    iget-object p2, p1, Lici;->d:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Lici;->c:Lkai;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lhqn;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v0, v2}, Lhqn;-><init>(Lici;Lkai;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
