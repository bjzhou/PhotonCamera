.class public final Lico;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lnak;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Map;

.field private final d:Lell;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/notificationchip/helper/VideoNotificationHelper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lico;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lell;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lico;->d:Lell;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Licn;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lico;->e:Ljava/util/Map;

    new-instance v11, Ljava/util/EnumMap;

    const-class v1, Licm;

    invoke-direct {v11, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Licm;->values()[Licm;

    move-result-object v12

    array-length v13, v12

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_0

    aget-object v9, v12, v15

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Licm;->i:I

    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v16, 0xc

    move-object/from16 v6, p1

    move-object v14, v9

    move/from16 v9, v16

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    invoke-interface {v11, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    iput-object v11, v0, Lico;->a:Ljava/util/Map;

    iget-object v11, v0, Lico;->e:Ljava/util/Map;

    new-instance v12, Ljava/util/EnumMap;

    const-class v1, Licn;

    invoke-direct {v12, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Licn;->values()[Licn;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    aget-object v9, v13, v15

    iget v1, v9, Licn;->f:I

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, v9, Licn;->g:Z

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    new-instance v4, Lick;

    invoke-direct {v4, v11, v9}, Lick;-><init>(Ljava/util/Map;Licn;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v16, 0xc

    move-object/from16 v6, p1

    move-object v10, v9

    move/from16 v9, v16

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, p1

    goto :goto_1

    :cond_1
    iput-object v12, v0, Lico;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Licn;)V
    .locals 1

    iget-object v0, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkad;

    invoke-interface {v0}, Lkad;->close()V

    iget-object v0, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkad;

    invoke-interface {v1}, Lkad;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final c(Licm;)V
    .locals 1

    iget-object v0, p0, Lico;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Licf;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lico;->d:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    :cond_0
    return-void
.end method

.method public final d(Licn;)V
    .locals 4

    iget-object v0, p0, Lico;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Licf;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lgfd;

    const/16 v3, 0xf

    invoke-direct {v2, p1, v3}, Lgfd;-><init>(Licn;I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lhfj;->s:Lhfj;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Licl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Licl;-><init>(Lico;I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lico;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lico;->e:Ljava/util/Map;

    iget-object v2, p0, Lico;->d:Lell;

    invoke-interface {v2, v0}, Lell;->d(Lelk;)Lkad;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lico;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "No chip found for thermal type: %s"

    const/16 v2, 0x104c

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void
.end method
