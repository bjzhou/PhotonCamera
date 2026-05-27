.class final Lght;
.super Ljava/lang/Object;

# interfaces
.implements Lghg;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lght;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkfh;
    .locals 3

    iget v0, p0, Lght;->a:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkff;->c(I)V

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    invoke-virtual {v0, v1}, Lkff;->d(Z)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lkff;->c(I)V

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    invoke-virtual {v0, v2}, Lkff;->e(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkff;->d(Z)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lght;->a:I

    return-void
.end method
