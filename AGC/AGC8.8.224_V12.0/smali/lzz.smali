.class public final Llzz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v0, v1}, Lout;->c(III)Loun;

    move-result-object v0

    iput-object v0, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]  PID: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnwd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnxb;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Llzz;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lnwd;

    iput-object p0, p1, Lnwd;->f:Llzz;

    return-void
.end method

.method private constructor <init>(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llhj;

    invoke-direct {v0, p1, p2, p3, p4}, Llhj;-><init>(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)V

    iput-object v0, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Llzz;->a:Ljava/lang/Object;

    return-void
.end method

.method public static A(Llhj;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnzl;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lnwj;->a(Lnzl;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Llhj;->a:Ljava/lang/Object;

    check-cast p0, Lnzl;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lnwj;->a(Lnzl;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static B(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)Llzz;
    .locals 1

    new-instance v0, Llzz;

    invoke-direct {v0, p0, p1, p2, p3}, Llzz;-><init>(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static C(Lnwd;Llhj;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Llhj;->b:Ljava/lang/Object;

    check-cast v0, Lnzl;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lnwj;->g(Lnwd;Lnzl;ILjava/lang/Object;)V

    iget-object p1, p1, Llhj;->a:Ljava/lang/Object;

    check-cast p1, Lnzl;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lnwj;->g(Lnwd;Lnzl;ILjava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    array-length v0, p2

    if-lez v0, :cond_0

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to format "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayCore"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ", "

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/File;)J
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Llzz;->f(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static z(Lnsl;)Lcom/google/googlex/gcam/hdrplus/ManagedImageCallback;
    .locals 1

    new-instance v0, Lnsk;

    invoke-direct {v0, p0}, Lnsk;-><init>(Lnsl;)V

    return-object v0
.end method


# virtual methods
.method public final a(Llur;Loku;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Loun;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "PlayCore"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Llzz;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "PlayCore"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2, p3}, Llzz;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final g(IZ)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->l(IZ)V

    return-void
.end method

.method public final h(ILnvt;)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->m(ILnvt;)V

    return-void
.end method

.method public final i(ID)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->ak(ID)V

    return-void
.end method

.method public final j(II)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->s(II)V

    return-void
.end method

.method public final k(II)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->o(II)V

    return-void
.end method

.method public final l(IJ)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->q(IJ)V

    return-void
.end method

.method public final m(IF)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->am(IF)V

    return-void
.end method

.method public final n(ILjava/lang/Object;Lnyo;)V
    .locals 2

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast p2, Lnxy;

    check-cast v0, Lnwd;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lnwd;->A(II)V

    iget-object v1, v0, Lnwd;->f:Llzz;

    invoke-interface {p3, p2, v1}, Lnyo;->l(Ljava/lang/Object;Llzz;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lnwd;->A(II)V

    return-void
.end method

.method public final o(II)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->s(II)V

    return-void
.end method

.method public final p(IJ)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->D(IJ)V

    return-void
.end method

.method public final q(ILjava/lang/Object;Lnyo;)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast p2, Lnxy;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->u(ILnxy;Lnyo;)V

    return-void
.end method

.method public final r(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lnvt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast p2, Lnvt;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->x(ILnvt;)V

    return-void

    :cond_0
    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast p2, Lnxy;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->w(ILnxy;)V

    return-void
.end method

.method public final s(II)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->o(II)V

    return-void
.end method

.method public final t(IJ)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->q(IJ)V

    return-void
.end method

.method public final u(II)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->ap(II)V

    return-void
.end method

.method public final v(IJ)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->ar(IJ)V

    return-void
.end method

.method public final w(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->y(ILjava/lang/String;)V

    return-void
.end method

.method public final x(II)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2}, Lnwd;->B(II)V

    return-void
.end method

.method public final y(IJ)V
    .locals 1

    iget-object v0, p0, Llzz;->a:Ljava/lang/Object;

    check-cast v0, Lnwd;

    invoke-virtual {v0, p1, p2, p3}, Lnwd;->D(IJ)V

    return-void
.end method
