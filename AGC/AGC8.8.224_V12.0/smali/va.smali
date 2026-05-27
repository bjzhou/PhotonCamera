.class public final Lva;
.super Ljava/lang/Object;


# static fields
.field public static d:Lva;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lva;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    iput-object v0, p0, Lva;->a:Ljava/lang/Object;

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljuh;Lcdx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljwb;Lfbz;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {p2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Ldhf;->a:Ldhk;

    invoke-interface {p4}, Ldhi;->e()V

    invoke-static {p1}, Lva;->B(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkrn;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Laxx;)V
    .locals 2

    iget-object v0, p1, Laxx;->a:Ljava/util/UUID;

    iget-object v1, p1, Laxx;->b:Lbcj;

    iget-object p1, p1, Laxx;->c:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lva;-><init>(Ljava/util/UUID;Lbcj;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lbkb;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbpt;Ljava/lang/Object;Lbqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbqb;Lbqo;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldbf;Ljuh;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldqx;Ltf;Lth;Ldqx;Lvn;[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    iput-object p5, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Leah;Lkaf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Leqw;Lezx;Lgoz;Lcdi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p4, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lesh;Lerz;Lese;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lesh;Lerz;Lese;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfci;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfuz;Lbkb;Lfyi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lva;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lva;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lva;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljgt;

    iget-object v2, v2, Ljgt;->c:Ljava/lang/Object;

    check-cast v2, Lbiv;

    invoke-virtual {v2}, Lbiv;->a()Lbhs;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljgt;

    iget-object v1, v1, Ljgt;->d:Ljava/lang/Object;

    iget-object v2, p0, Lva;->c:Ljava/lang/Object;

    check-cast v1, Lbir;

    invoke-virtual {v1}, Lbir;->a()Lbhs;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[B)V
    .locals 5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lva;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lva;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lva;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " with "

    const-string v3, "MobStore.FileStorage"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llsb;

    invoke-interface {v1}, Llsb;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "Cannot register backend, name empty"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v1}, Llsb;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llsb;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot override Backend "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llsg;

    invoke-interface {p2}, Llsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p2, "Cannot register transform, name empty"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {p2}, Llsg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llsg;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot to override Transform "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lva;->b:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lbcj;Ljava/util/Set;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    new-instance v0, Lbel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbel;-><init>(Lva;[B)V

    iput-object v0, p0, Lva;->b:Ljava/lang/Object;

    new-instance v0, Lbdp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbdp;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkpo;Ldhi;Ldzf;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkxy;Lkxy;Lkxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llec;Lleb;Lfhd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llzz;Lmqp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    invoke-static {}, Lnbj;->i()Lnbj;

    move-result-object p1

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnsb;Lcea;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    iput-object p3, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lva;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqz;Lvy;Lsb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    iput-object p2, p0, Lva;->b:Ljava/lang/Object;

    iput-object p3, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lva;->a:Ljava/lang/Object;

    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    iput-object v0, p0, Lva;->c:Ljava/lang/Object;

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Llto;

    invoke-direct {p1}, Llto;-><init>()V

    iput-object p1, p0, Lva;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lva;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lva;->b:Ljava/lang/Object;

    return-void
.end method

.method public static B(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/ff.pb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "/ff.pb_tmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private final K(J)Lfyw;
    .locals 2

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lva;->c:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p1, Lfyw;

    invoke-direct {p1}, Lfyw;-><init>()V

    monitor-exit v0

    return-object p1

    :cond_0
    iget-object p2, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfyw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;Ljuf;)V
    .locals 9

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    new-instance v8, Lenb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lenb;-><init>(Lva;Ljava/lang/Runnable;[B[B[B[B)V

    iget-object p1, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v0, v8, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final declared-synchronized C()Landroidx/wear/ambient/AmbientModeSupport$AmbientController;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkaf;

    iget-object v1, p0, Lva;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lkaf;

    iget v2, v2, Lkaf;->a:I

    check-cast v1, Lkaf;

    iget v1, v1, Lkaf;->b:I

    invoke-direct {v0, v2, v1}, Lkaf;-><init>(II)V

    iget-object v1, p0, Lva;->a:Ljava/lang/Object;

    check-cast v1, Leah;

    const-string v2, "mv-gyro-session"

    invoke-virtual {v1, v0, v2}, Leah;->f(Lkaf;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lva;[B[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final D()Ljava/lang/IllegalArgumentException;
    .locals 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple entries with same key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lva;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lva;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lva;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final E(Landroid/net/Uri;Llre;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lva;->I(Landroid/net/Uri;)Lkte;

    move-result-object p1

    invoke-interface {p2, p1}, Llre;->a(Lkte;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0, p1}, Lva;->I(Landroid/net/Uri;)Lkte;

    move-result-object p1

    invoke-virtual {p0, p2}, Lva;->I(Landroid/net/Uri;)Lkte;

    move-result-object p2

    iget-object v0, p1, Lkte;->d:Ljava/lang/Object;

    iget-object v1, p2, Lkte;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lkte;->a:Ljava/lang/Object;

    iget-object p2, p2, Lkte;->a:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    check-cast p1, Landroid/net/Uri;

    invoke-interface {v0, p1, p2}, Llsb;->l(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void

    :cond_0
    new-instance p1, Llrp;

    const-string p2, "Cannot rename file across backends"

    invoke-direct {p1, p2}, Llrp;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G(Landroid/net/Uri;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lva;->I(Landroid/net/Uri;)Lkte;

    move-result-object p1

    iget-object v0, p1, Lkte;->d:Ljava/lang/Object;

    iget-object p1, p1, Lkte;->a:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-interface {v0, p1}, Llsb;->f(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final H(Lorg/xmlpull/v1/XmlSerializer;Lloi;)V
    .locals 4

    const-string v0, ""

    const-string v1, "node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lva;->a:Ljava/lang/Object;

    check-cast v2, Llto;

    invoke-virtual {v2, p1, p2}, Llto;->e(Lorg/xmlpull/v1/XmlSerializer;Lloi;)V

    iget-object v2, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lva;

    invoke-virtual {v3, p1, p2}, Lva;->H(Lorg/xmlpull/v1/XmlSerializer;Lloi;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lva;->b:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lljr;

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final I(Landroid/net/Uri;)Lkte;
    .locals 10

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v0

    sget-object v1, Llru;->a:Ljava/util/regex/Pattern;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "transform="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-static {v3}, Lmrd;->c(Ljava/lang/String;)Lmrd;

    move-result-object v3

    invoke-virtual {v3}, Lmrd;->a()Lmrd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmrd;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lmvv;->i(Ljava/lang/Iterable;)Lmvv;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lmyu;->a:Lmvv;

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Llru;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lmvq;->g(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid fragment spec: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llsg;

    if-eqz v7, :cond_4

    invoke-virtual {v0, v7}, Lmvq;->g(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Llrp;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such transform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Llrp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object v0

    invoke-virtual {v0}, Lmvv;->a()Lmvv;

    move-result-object v0

    new-instance v1, Llrd;

    invoke-direct {v1}, Llrd;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llsb;

    if-eqz v3, :cond_8

    iput-object v3, v1, Llrd;->a:Llsb;

    iget-object v2, p0, Lva;->b:Ljava/lang/Object;

    iput-object v2, v1, Llrd;->c:Ljava/util/List;

    iput-object v0, v1, Llrd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llsg;

    invoke-interface {v3}, Llsg;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_7
    iput-object p1, v1, Llrd;->d:Landroid/net/Uri;

    new-instance p1, Lkte;

    invoke-direct {p1, v1}, Lkte;-><init>(Llrd;)V

    return-object p1

    :cond_8
    new-instance p1, Llrp;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v1, "Cannot open, unregistered backend: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Llrp;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final J()Lva;
    .locals 2

    new-instance v0, Lva;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lva;-><init>([S)V

    iget-object v1, p0, Lva;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lrd;
    .locals 1

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Lth;

    invoke-virtual {v0, p1}, Lth;->a(Ljava/lang/String;)Lrd;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/view/Surface;)Ljava/lang/AutoCloseable;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lva;->b:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lva;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has become active"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lva;->a:Ljava/lang/Object;

    invoke-static {v1}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    new-instance v3, Lrl;

    invoke-direct {v3, p0, p1, v2}, Lrl;-><init>(Lva;Landroid/view/Surface;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrk;

    invoke-interface {v0}, Lrk;->a()V

    goto :goto_2

    :cond_2
    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t valid!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final c(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final e(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lcq;

    invoke-virtual {v1, p1, p2}, Lcq;->P(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lcq;

    invoke-virtual {v1, p1}, Lcq;->R(Landroid/view/Menu;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lcq;

    invoke-virtual {v1, p1}, Lcq;->Q(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lyo;)V
    .locals 5

    iget-object v0, p0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lyo;->aK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lyo;->aK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyn;

    invoke-virtual {v2}, Lyn;->O()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lyn;->P()I

    move-result v3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lva;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lyo;->U()V

    return-void
.end method

.method public final i(Lyo;III)V
    .locals 6

    iget-object v0, p1, Lyo;->d:Lyd;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget v2, p1, Lyn;->ad:I

    iget v3, p1, Lyn;->ae:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lyn;->E(I)V

    invoke-virtual {p1, v4}, Lyn;->D(I)V

    invoke-virtual {p1, p3}, Lyn;->F(I)V

    invoke-virtual {p1, p4}, Lyn;->A(I)V

    invoke-virtual {p1, v2}, Lyn;->E(I)V

    invoke-virtual {p1, v3}, Lyn;->D(I)V

    iget-object p3, p0, Lva;->b:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Lyo;

    iput p2, p4, Lyo;->b:I

    check-cast p3, Lyu;

    invoke-virtual {p3}, Lyu;->V()V

    iget-object p2, p1, Lyo;->d:Lyd;

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iget-object p1, p1, Lyo;->d:Lyd;

    iget-wide v2, p1, Lyd;->I:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lyd;->I:J

    iget-wide v2, p1, Lyd;->b:J

    sub-long/2addr p2, v0

    add-long/2addr v2, p2

    iput-wide v2, p1, Lyd;->b:J

    :cond_1
    return-void
.end method

.method public final j(Lzn;Lyn;I)Z
    .locals 6

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Lyn;->O()I

    move-result v1

    check-cast v0, Lyv;

    iput v1, v0, Lyv;->i:I

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Lyn;->P()I

    move-result v1

    check-cast v0, Lyv;

    iput v1, v0, Lyv;->j:I

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Lyn;->j()I

    move-result v1

    check-cast v0, Lyv;

    iput v1, v0, Lyv;->a:I

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Lyn;->h()I

    move-result v1

    check-cast v0, Lyv;

    iput v1, v0, Lyv;->b:I

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Lyv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyv;->g:Z

    iput p3, v0, Lyv;->h:I

    iget p3, v0, Lyv;->i:I

    iget v2, v0, Lyv;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne p3, v5, :cond_0

    iget p3, p2, Lyn;->Y:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ne v2, v5, :cond_1

    iget v2, p2, Lyn;->Y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-eqz p3, :cond_2

    iget-object p3, p2, Lyn;->v:[I

    aget p3, p3, v1

    if-ne p3, v3, :cond_2

    iput v4, v0, Lyv;->i:I

    :cond_2
    if-eqz v2, :cond_3

    iget-object p3, p2, Lyn;->v:[I

    aget p3, p3, v4

    if-ne p3, v3, :cond_3

    iput v4, v0, Lyv;->j:I

    :cond_3
    invoke-virtual {p1, p2, v0}, Lzn;->a(Lyn;Lyv;)V

    iget-object p1, p0, Lva;->c:Ljava/lang/Object;

    check-cast p1, Lyv;

    iget p1, p1, Lyv;->c:I

    invoke-virtual {p2, p1}, Lyn;->F(I)V

    iget-object p1, p0, Lva;->c:Ljava/lang/Object;

    check-cast p1, Lyv;

    iget p1, p1, Lyv;->d:I

    invoke-virtual {p2, p1}, Lyn;->A(I)V

    iget-object p1, p0, Lva;->c:Ljava/lang/Object;

    check-cast p1, Lyv;

    iget-boolean p3, p1, Lyv;->f:Z

    iput-boolean p3, p2, Lyn;->G:Z

    iget p1, p1, Lyv;->e:I

    invoke-virtual {p2, p1}, Lyn;->x(I)V

    iget-object p1, p0, Lva;->c:Ljava/lang/Object;

    check-cast p1, Lyv;

    iput v1, p1, Lyv;->h:I

    iget-boolean p1, p1, Lyv;->g:Z

    return p1
.end method

.method public final k(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lva;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/util/Set;Lgam;)Lgam;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lva;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lva;->c:Ljava/lang/Object;

    check-cast v1, Lgkc;

    invoke-virtual {v1}, Lgkc;->b()Llij;

    move-result-object v1

    new-instance v14, Lgkb;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Llij;->b:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lmqp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Llij;->g:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lecd;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Llij;->e:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lebv;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Llij;->f:Ljava/lang/Object;

    check-cast v2, Lgjz;

    invoke-virtual {v2}, Lgjz;->a()Lgjy;

    move-result-object v8

    iget-object v2, v1, Llij;->d:Ljava/lang/Object;

    check-cast v2, Lebc;

    invoke-virtual {v2}, Lebc;->b()Lgkf;

    move-result-object v9

    iget-object v2, v1, Llij;->a:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lgue;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Llij;->c:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkbc;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lgkb;-><init>(Ljava/util/Set;Lgam;Lmqp;Lecd;Lebv;Lgjy;Lgkf;Lgue;Lkbc;[B[B)V

    return-object v14

    :cond_0
    iget-object v1, v0, Lva;->b:Ljava/lang/Object;

    check-cast v1, Lgjw;

    invoke-virtual {v1}, Lgjw;->b()Ldqx;

    move-result-object v1

    new-instance v10, Lgjv;

    iget-object v2, v1, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lgnk;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ldqx;->a:Ljava/lang/Object;

    check-cast v2, Lgjz;

    invoke-virtual {v2}, Lgjz;->a()Lgjy;

    move-result-object v4

    iget-object v2, v1, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkbc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lghx;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lmqp;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v10

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lgjv;-><init>(Lgnk;Lgjy;Lkbc;Lghx;Lmqp;Ljava/util/Set;Lgam;)V

    return-object v10
.end method

.method public final n(JILmrl;)Lgig;
    .locals 14

    move-object v0, p0

    new-instance v13, Lgig;

    iget-object v1, v0, Lva;->b:Ljava/lang/Object;

    check-cast v1, Lgii;

    invoke-virtual {v1}, Lgii;->b()Lkpo;

    move-result-object v2

    iget-object v1, v0, Lva;->c:Ljava/lang/Object;

    check-cast v1, Lgim;

    invoke-virtual {v1}, Lgim;->b()Lhdk;

    move-result-object v3

    iget-object v1, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljuf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-wide v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v12}, Lgig;-><init>(Lkpo;Lhdk;Ljuf;JILmrl;[B[B[B[B)V

    return-object v13
.end method

.method public final o(Lkpb;)V
    .locals 5

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lva;->K(J)Lfyw;

    move-result-object v3

    iget-object v4, v3, Lfyw;->b:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "Image already added"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lfze;->b(Lkpb;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, v3, Lfyw;->b:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final p(J)V
    .locals 4

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lva;->K(J)Lfyw;

    move-result-object v1

    iget-object v2, v1, Lfyw;->f:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Base frame already selected!"

    invoke-static {v2, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, v1, Lfyw;->f:Lmqp;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final q(JLnou;)V
    .locals 2

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lva;->K(J)Lfyw;

    move-result-object v1

    iget-object v1, v1, Lfyw;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lkpb;)V
    .locals 5

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lva;->K(J)Lfyw;

    move-result-object v3

    iget-object v4, v3, Lfyw;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "Image already added"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lfze;->b(Lkpb;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, v3, Lfyw;->a:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final s(Ljava/lang/String;)Leid;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lmoz;->e(Z)V

    new-instance v2, Lfyw;

    invoke-direct {v2}, Lfyw;-><init>()V

    new-instance p1, Leid;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Leid;-><init>(Lva;Lfyw;I[B[B[B)V

    return-object p1
.end method

.method public final t()Z
    .locals 6

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    const-class v1, Ljava/lang/Integer;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lva;->x(Ljava/lang/Class;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 6

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Lbkb;

    invoke-virtual {v0}, Lbkb;->X()Lbkb;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lbkb;->G(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    return v4
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Lfyi;

    iget-object v0, v0, Lfyi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 6

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v4

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    const-class v1, Ljava/lang/Integer;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lva;->x(Ljava/lang/Class;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public final x(Ljava/lang/Class;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6

    iget-object v0, p0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Lbkb;

    invoke-virtual {v0}, Lbkb;->Y()Lbkb;

    move-result-object v1

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbkb;->X()Lbkb;

    move-result-object v4

    invoke-static {p4, p1}, Llyh;->X(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lbkb;->G(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lbkb;->X()Lbkb;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lbkb;->F(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lbkb;->Y()Lbkb;

    move-result-object v5

    invoke-static {p5, p1}, Llyh;->X(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v5, p2, p5}, Lbkb;->G(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, 0x1

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lbkb;->X()Lbkb;

    move-result-object v1

    invoke-static {p4, p1}, Llyh;->X(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lbkb;->G(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lbkb;->Y()Lbkb;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lbkb;->F(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-nez v4, :cond_5

    if-nez p5, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v2
.end method

.method public final varargs y([Lfyk;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Lfyi;

    iget-object v0, v0, Lfyi;->a:Lfyk;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final varargs z([Ljava/lang/Integer;)Z
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lva;->a:Ljava/lang/Object;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    check-cast v0, Lklw;

    invoke-virtual {v0, v1}, Lklw;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
