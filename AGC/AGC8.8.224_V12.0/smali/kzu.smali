.class final Lkzu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Llaa;

.field private final c:Lkye;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkye;Llaa;I)V
    .locals 0

    iput p4, p0, Lkzu;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzu;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkzu;->b:Llaa;

    iput-object p2, p0, Lkzu;->c:Lkye;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lkzu;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzu;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkzu;->c:Lkye;

    iget-object v2, p0, Lkzu;->b:Llaa;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lkzu;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkzu;->c:Lkye;

    iget-object v2, p0, Lkzu;->b:Llaa;

    invoke-static {v0, v1, v2}, Llaa;->k(Ljava/lang/Object;Lkye;Llaa;)V

    return-void

    :goto_0
    :try_start_0
    invoke-interface {v1, v0}, Lkye;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Llaa;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    invoke-virtual {v2, v0}, Llaa;->m(Lkzd;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Llaa;->m(Lkzd;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkzu;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzu;->c:Lkye;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkzu;->c:Lkye;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
