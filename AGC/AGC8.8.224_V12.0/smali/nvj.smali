.class public final Lnvj;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lnwh;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnwh;->a:Lnwh;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lnwh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnvj;->d:Lnwh;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
