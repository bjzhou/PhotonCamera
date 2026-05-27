.class public final Lgqe;
.super Ljava/lang/Object;

# interfaces
.implements Lgqd;


# instance fields
.field public final a:Lnsb;

.field public final b:Lgsa;


# direct methods
.method public constructor <init>(Lnsb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqe;->a:Lnsb;

    new-instance p1, Lgsa;

    invoke-direct {p1}, Lgsa;-><init>()V

    iput-object p1, p0, Lgqe;->b:Lgsa;

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lkpb;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
