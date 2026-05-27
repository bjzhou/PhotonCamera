.class public final Lalq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lakq;

.field private b:Z

.field private final c:Laks;


# direct methods
.method public constructor <init>(Laks;Lakq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lalq;->b:Z

    iput-object p1, p0, Lalq;->c:Laks;

    iput-object p2, p0, Lalq;->a:Lakq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lalq;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lalq;->c:Laks;

    iget-object v1, p0, Lalq;->a:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lalq;->b:Z

    :cond_0
    return-void
.end method
