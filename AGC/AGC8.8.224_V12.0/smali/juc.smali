.class final Ljuc;
.super Ljava/lang/Object;

# interfaces
.implements Ljub;


# instance fields
.field private final a:Ljzv;


# direct methods
.method public constructor <init>(Ljzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljuc;->a:Ljzv;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lnou;
    .locals 1

    iget-object v0, p0, Ljuc;->a:Ljzv;

    invoke-interface {v0, p1, p2}, Ljzv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method
