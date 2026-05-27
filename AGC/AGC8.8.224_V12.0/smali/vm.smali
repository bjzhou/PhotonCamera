.class public final Lvm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field final synthetic a:Lvo;

.field private final b:J

.field private final c:Loom;


# direct methods
.method public constructor <init>(Lvo;J)V
    .locals 0

    iput-object p1, p0, Lvm;->a:Lvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lvm;->b:J

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->h(Z)Loom;

    move-result-object p1

    iput-object p1, p0, Lvm;->c:Loom;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lvm;->c:Loom;

    invoke-virtual {v0}, Loom;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvm;->a:Lvo;

    iget-wide v1, p0, Lvm;->b:J

    invoke-virtual {v0, v1, v2}, Lvo;->a(J)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lvm;->a()V

    return-void
.end method
