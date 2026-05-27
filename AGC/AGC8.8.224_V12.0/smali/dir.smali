.class public final Ldir;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/SharedPreferences;

.field public final c:Lcvr;

.field private final d:Lj$/util/Optional;

.field private final e:Lkgd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/configuration/impl/GcaConfigHelper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldir;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkgd;Landroid/content/SharedPreferences;Lcvr;Ldin;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ldir;->c:Lcvr;

    iput-object p1, p0, Ldir;->e:Lkgd;

    iput-object p2, p0, Ldir;->b:Landroid/content/SharedPreferences;

    sget-object p1, Ldin;->b:Ldin;

    invoke-virtual {p4, p1}, Ldin;->b(Ldin;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ldiv;

    invoke-direct {p1}, Ldiv;-><init>()V

    sget-object p2, Ldiw;->a:Ldiw;

    invoke-virtual {p2}, Ldiw;->a()Z

    move-result p2

    iput-boolean p2, p1, Ldiv;->a:Z

    sget-object p2, Ldiw;->a:Ldiw;

    invoke-virtual {p2}, Ldiw;->a()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    goto :goto_7

    :cond_0
    const/4 p3, 0x0

    const/4 p5, 0x1

    :try_start_0
    new-instance p6, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p2, p2, Ldiw;->b:Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p6}, Ljava/io/InputStreamReader;->read()I

    move-result p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-char p2, p2

    const/16 p3, 0x31

    if-ne p2, p3, :cond_1

    :try_start_2
    invoke-virtual {p6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_6

    :cond_1
    :try_start_3
    invoke-virtual {p6}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p3, p6

    goto :goto_0

    :catch_2
    move-exception p2

    move-object p3, p6

    goto :goto_2

    :catch_3
    move-exception p2

    move-object p3, p6

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p3, :cond_2

    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception p2

    :cond_2
    :goto_1
    throw p1

    :catch_5
    move-exception p2

    :goto_2
    if-eqz p3, :cond_3

    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :cond_3
    :goto_3
    goto :goto_7

    :catch_6
    move-exception p2

    :goto_4
    if-eqz p3, :cond_4

    :try_start_6
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    const/4 p4, 0x1

    goto :goto_7

    :cond_4
    :goto_6
    const/4 p4, 0x1

    :goto_7
    iput-boolean p4, p1, Ldiv;->b:Z

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    goto :goto_8

    :cond_5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Ldir;->d:Lj$/util/Optional;

    return-void
.end method

.method static a(Ldhj;Ljava/lang/Float;)Lloz;
    .locals 4

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    sget-object v1, Ldiq;->a:Llox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-instance v0, Llou;

    invoke-direct {v0, v1, p0, p1}, Llou;-><init>(Llox;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Ldhj;Ljava/lang/Integer;)Lloz;
    .locals 3

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ldiq;->a:Llox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Llos;

    invoke-direct {v0, v1, p0, p1}, Llos;-><init>(Llox;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static c(Ldhj;Ljava/lang/String;)Lloz;
    .locals 3

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ldiq;->a:Llox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0}, Lloz;->d(Llox;Ljava/lang/String;Ljava/lang/String;Z)Lloz;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Ldhj;Z)Lloz;
    .locals 3

    iget-object v0, p0, Ldhj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldhj;->a:Ljava/lang/String;

    sget-object v1, Ldiq;->a:Llox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Llox;->d(Ljava/lang/String;Z)Lloz;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static f(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Ldir;->e:Lkgd;

    invoke-virtual {v1, p1}, Lkgd;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Ldir;->d:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldir;->d:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldiv;

    iget-boolean v1, v1, Ldiv;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldir;->d:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldiv;

    iget-boolean v1, v1, Ldiv;->b:Z

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Ldir;->e:Lkgd;

    const-string v1, "persist."

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkgd;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
