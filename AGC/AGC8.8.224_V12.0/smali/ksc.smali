.class public final Lksc;
.super Ljava/lang/Object;

# interfaces
.implements Lksb;


# static fields
.field public static final a:I

.field public static final e:Lnaa;


# instance fields
.field public final b:Landroid/util/LruCache;

.field public final c:Landroid/util/LruCache;

.field public final d:Lksu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.protobuf.Any"

    invoke-static {v0}, Lkwp;->aw(Ljava/lang/String;)I

    move-result v0

    sput v0, Lksc;->a:I

    new-instance v0, Lmvw;

    invoke-direct {v0}, Lmvw;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_VARINT"

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_FIXED64"

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_LENGTH_DELIMITED"

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_START_GROUP"

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_END_GROUP"

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WIRETYPE_FIXED32"

    invoke-virtual {v0, v1, v2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    new-instance v0, Lnaa;

    invoke-direct {v0}, Lnaa;-><init>()V

    sput-object v0, Lksc;->e:Lnaa;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lksf;

    invoke-direct {v0}, Lksf;-><init>()V

    iput-object v0, p0, Lksc;->b:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lksc;->c:Landroid/util/LruCache;

    new-instance v0, Lksu;

    invoke-direct {v0}, Lksu;-><init>()V

    iput-object v0, p0, Lksc;->d:Lksu;

    return-void
.end method

.method public static a(Lkrw;Lpbd;Lkrx;Lkth;Lmqp;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_8

    iget-object v3, p1, Lpbd;->b:Lnwy;

    invoke-interface {v3}, Lnwy;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p1, Lpbd;->b:Lnwy;

    invoke-interface {v3, v1}, Lnwy;->d(I)I

    move-result v3

    invoke-static {v3}, Loag;->a(I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget-object v4, p2, Lkrx;->b:Lkso;

    invoke-static {v3}, Ld;->c(I)Loaf;

    move-result-object v5

    iget v6, v5, Loaf;->a:I

    if-ne v6, v2, :cond_2

    check-cast v4, Lksp;

    iget-object v4, v4, Lksp;->b:Lksl;

    iget-object v5, v5, Loaf;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Loac;->b(I)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-interface {v4, v2, p0}, Lksl;->a(ILkrw;)Lksk;

    move-result-object v2

    goto :goto_2

    :cond_2
    check-cast v4, Lksp;

    iget-object v2, v4, Lksp;->b:Lksl;

    new-instance v4, Lkss;

    invoke-direct {v4, v2, v5, p0}, Lkss;-><init>(Lksl;Loaf;Lkrw;)V

    move-object v2, v4

    :goto_2
    invoke-interface {v2}, Lksk;->a()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lkwp;->e()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    invoke-virtual {p3, p0}, Lkth;->b(I)Lnwp;

    move-result-object p0

    iget-object p1, p0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lnwn;->p()V

    :cond_3
    iget-object p1, p0, Lnwp;->b:Lnws;

    check-cast p1, Loah;

    sget-object p2, Loah;->n:Loah;

    add-int/lit8 p2, v3, -0x1

    iput p2, p1, Loah;->i:I

    iget p2, p1, Loah;->a:I

    or-int/lit16 p2, p2, 0x80

    iput p2, p1, Loah;->a:I

    invoke-static {v3}, Ld;->c(I)Loaf;

    move-result-object p1

    iget-object p2, p0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lnwn;->p()V

    :cond_4
    iget-object p2, p0, Lnwp;->b:Lnws;

    check-cast p2, Loah;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Loah;->j:Loaf;

    iget p1, p2, Loah;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p2, Loah;->a:I

    invoke-virtual {p4}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lnwp;->aI(J)V

    :cond_5
    invoke-virtual {p3, p0}, Lkth;->a(Lnwp;)V

    :cond_6
    return v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return v2
.end method

.method public static b(Lpbd;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lpbd;->b:Lnwy;

    invoke-interface {p0}, Lnwy;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(II)Z
    .locals 1

    sget v0, Lksc;->a:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lpbc;)Lpbd;
    .locals 1

    iget-object p0, p0, Lpbc;->c:Lnxt;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const v0, -0x79209ddf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpbd;

    return-object p0
.end method

.method public static e(Lpbg;)Lpbd;
    .locals 1

    iget-object p0, p0, Lpbg;->a:Lnxt;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const v0, -0x79209ddf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpbd;

    return-object p0
.end method
