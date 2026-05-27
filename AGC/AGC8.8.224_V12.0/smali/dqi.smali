.class public final Ldqi;
.super Ljava/lang/Object;

# interfaces
.implements Ldqq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcvm;)Lnou;
    .locals 1

    new-instance v0, Ldqd;

    iget-object p1, p1, Lcvm;->d:Ljava/lang/Object;

    invoke-direct {v0, p1}, Ldqd;-><init>(Lkpb;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method
