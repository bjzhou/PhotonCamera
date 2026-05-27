.class Leqq;
.super Leqo;


# instance fields
.field final synthetic b:Leqt;


# direct methods
.method public constructor <init>(Leqt;)V
    .locals 0

    iput-object p1, p0, Leqq;->b:Leqt;

    invoke-direct {p0}, Leqo;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Leqq;->b:Leqt;

    iget-object v0, v0, Leqt;->e:Liff;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liff;->G(Z)V

    return-void
.end method
