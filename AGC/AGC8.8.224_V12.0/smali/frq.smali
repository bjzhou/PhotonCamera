.class public final Lfrq;
.super Lkfg;


# instance fields
.field final synthetic a:Lnph;


# direct methods
.method public constructor <init>(Lnph;)V
    .locals 0

    iput-object p1, p0, Lfrq;->a:Lnph;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bw(Lkou;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lfrq;->a:Lnph;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null metadata provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lfrq;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
