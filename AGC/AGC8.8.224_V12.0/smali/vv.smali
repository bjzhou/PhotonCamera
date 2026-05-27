.class public final Lvv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Lvz;

.field public final b:Loom;

.field private final c:I

.field private final d:Lvm;


# direct methods
.method public constructor <init>(Lvm;Lvz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvv;->d:Lvm;

    iput-object p2, p0, Lvv;->a:Lvz;

    sget-object p1, Lvw;->a:Loon;

    invoke-virtual {p1}, Loon;->b()I

    move-result p1

    iput p1, p0, Lvv;->c:I

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->h(Z)Loom;

    move-result-object p1

    iput-object p1, p0, Lvv;->b:Loom;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lvv;->b:Loom;

    invoke-virtual {v0}, Loom;->b()Z

    iget-object v0, p0, Lvv;->d:Lvm;

    invoke-virtual {v0}, Lvm;->a()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraGraph.Session-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvv;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
