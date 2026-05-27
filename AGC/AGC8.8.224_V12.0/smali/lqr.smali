.class public final Llqr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llqr;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Lmvv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Llqr;->a()Lmob;

    move-result-object v0

    invoke-virtual {v0}, Lmob;->c()V

    invoke-virtual {v0}, Lmob;->a()Llqr;

    move-result-object v0

    sput-object v0, Llqr;->a:Llqr;

    invoke-static {}, Llqr;->a()Lmob;

    move-result-object v0

    invoke-virtual {v0}, Lmob;->c()V

    new-instance v1, Llqq;

    invoke-direct {v1}, Llqq;-><init>()V

    invoke-virtual {v0, v1}, Lmob;->b(Llqt;)V

    invoke-virtual {v0}, Lmob;->a()Llqr;

    invoke-static {}, Llqr;->a()Lmob;

    move-result-object v0

    iget-object v1, v0, Lmob;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "A SourcePolicy can only set internal() or external() once."

    invoke-static {v1, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lmob;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lmob;->a()Llqr;

    return-void
.end method

.method public constructor <init>(ZZLmvv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llqr;->b:Z

    iput-boolean p2, p0, Llqr;->c:Z

    iput-object p3, p0, Llqr;->d:Lmvv;

    return-void
.end method

.method public static a()Lmob;
    .locals 2

    new-instance v0, Lmob;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmob;-><init>([B)V

    return-object v0
.end method
