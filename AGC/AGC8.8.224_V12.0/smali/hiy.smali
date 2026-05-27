.class public final Lhiy;
.super Ljava/lang/Object;

# interfaces
.implements Lhit;


# instance fields
.field private final a:Lhiz;

.field private b:Lkad;


# direct methods
.method public constructor <init>(Lhiz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhiy;->a:Lhiz;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Lhiy;->a:Lhiz;

    invoke-interface {v0}, Lhiz;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lhiy;->b:Lkad;

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhiy;->b:Lkad;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhiy;->b:Lkad;

    return-void
.end method
