.class final Leuv;
.super Lftk;


# instance fields
.field final synthetic a:Leuy;


# direct methods
.method public constructor <init>(Leuy;)V
    .locals 0

    iput-object p1, p0, Leuv;->a:Leuy;

    invoke-direct {p0}, Lftk;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Leuv;->a:Leuy;

    iget-object v0, v0, Leuy;->f:Lhgy;

    const v1, 0x7f130008

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    return-void
.end method

.method public final d(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Leuv;->a:Leuy;

    iget-object p1, p1, Leuy;->f:Lhgy;

    const v0, 0x7f130008

    invoke-interface {p1, v0}, Lhgy;->b(I)V

    :cond_0
    return-void
.end method
