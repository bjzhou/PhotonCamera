.class public final Lgjf;
.super Ljava/lang/Object;

# interfaces
.implements Lfsk;


# instance fields
.field final synthetic a:Lgnk;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lgnk;I)V
    .locals 0

    iput p2, p0, Lgjf;->b:I

    iput-object p1, p0, Lgjf;->a:Lgnk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lkeb;
    .locals 1

    iget v0, p0, Lgjf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgjf;->a:Lgnk;

    invoke-interface {v0, p1, p2}, Lgnk;->b(J)Lkeb;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lgjf;->a:Lgnk;

    invoke-interface {v0, p1, p2}, Lgnk;->b(J)Lkeb;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
