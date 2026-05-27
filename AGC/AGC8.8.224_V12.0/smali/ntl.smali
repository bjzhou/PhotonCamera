.class final Lntl;
.super Ljava/lang/Object;

# interfaces
.implements Ljkc;


# instance fields
.field final synthetic a:Lnph;


# direct methods
.method public constructor <init>(Lnph;)V
    .locals 0

    iput-object p1, p0, Lntl;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lntl;->a:Lnph;

    new-instance v1, Lntn;

    invoke-direct {v1, p1, p2}, Lntn;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b([B[B)V
    .locals 0

    iget-object p2, p0, Lntl;->a:Lnph;

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
