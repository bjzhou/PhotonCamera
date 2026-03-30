.class public abstract Lj$/nio/file/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/nio/file/J;

.field public static final b:Lj$/nio/file/J;

.field public static final c:Lj$/nio/file/J;

.field public static final d:Lj$/nio/file/J;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj$/nio/file/G;

    const-string v1, "OVERFLOW"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lj$/nio/file/G;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/m;->a:Lj$/nio/file/J;

    new-instance v0, Lj$/nio/file/G;

    const-string v1, "ENTRY_CREATE"

    const-class v2, Lj$/nio/file/Path;

    invoke-direct {v0, v2, v1}, Lj$/nio/file/G;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/m;->b:Lj$/nio/file/J;

    new-instance v0, Lj$/nio/file/G;

    const-string v1, "ENTRY_DELETE"

    invoke-direct {v0, v2, v1}, Lj$/nio/file/G;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/m;->c:Lj$/nio/file/J;

    new-instance v0, Lj$/nio/file/G;

    const-string v1, "ENTRY_MODIFY"

    invoke-direct {v0, v2, v1}, Lj$/nio/file/G;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/m;->d:Lj$/nio/file/J;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/F;)Ljava/nio/file/StandardOpenOption;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lj$/nio/file/F;->READ:Lj$/nio/file/F;

    if-ne p0, v0, :cond_1

    invoke-static {}, Lj$/nio/file/t;->g()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lj$/nio/file/F;->WRITE:Lj$/nio/file/F;

    if-ne p0, v0, :cond_2

    invoke-static {}, Lj$/nio/file/t;->p()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lj$/nio/file/F;->APPEND:Lj$/nio/file/F;

    if-ne p0, v0, :cond_3

    invoke-static {}, Lj$/nio/file/t;->t()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lj$/nio/file/F;->TRUNCATE_EXISTING:Lj$/nio/file/F;

    if-ne p0, v0, :cond_4

    invoke-static {}, Lj$/nio/file/t;->w()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lj$/nio/file/F;->CREATE:Lj$/nio/file/F;

    if-ne p0, v0, :cond_5

    invoke-static {}, Lj$/nio/file/t;->y()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Lj$/nio/file/F;->CREATE_NEW:Lj$/nio/file/F;

    if-ne p0, v0, :cond_6

    invoke-static {}, Lj$/nio/file/t;->z()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Lj$/nio/file/F;->DELETE_ON_CLOSE:Lj$/nio/file/F;

    if-ne p0, v0, :cond_7

    invoke-static {}, Lj$/nio/file/t;->A()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lj$/nio/file/F;->SPARSE:Lj$/nio/file/F;

    if-ne p0, v0, :cond_8

    invoke-static {}, Lj$/nio/file/t;->B()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, Lj$/nio/file/F;->SYNC:Lj$/nio/file/F;

    if-ne p0, v0, :cond_9

    invoke-static {}, Lj$/nio/file/t;->C()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lj$/nio/file/t;->D()Ljava/nio/file/StandardOpenOption;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/Path;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/Path;

    invoke-static {p0}, Lj$/nio/file/v;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lj$/nio/file/t;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lj$/nio/file/t;->d(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/file/u;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lj$/adapter/b;->y()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lj$/nio/file/attribute/e;

    if-ne p0, v1, :cond_1

    return-object v2

    :cond_1
    if-ne p0, v2, :cond_2

    invoke-static {}, Lj$/adapter/b;->y()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lj$/adapter/b;->A()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lj$/nio/file/attribute/y;

    if-ne p0, v1, :cond_3

    return-object v2

    :cond_3
    if-ne p0, v2, :cond_4

    invoke-static {}, Lj$/adapter/b;->A()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lj$/adapter/b;->B()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lj$/nio/file/attribute/u;

    if-ne p0, v1, :cond_5

    return-object v2

    :cond_5
    if-ne p0, v2, :cond_6

    invoke-static {}, Lj$/adapter/b;->B()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_6
    const-class v1, Lj$/nio/file/attribute/h;

    if-ne p0, v1, :cond_7

    invoke-static {}, Lj$/adapter/b;->C()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lj$/adapter/b;->C()Ljava/lang/Class;

    move-result-object v2

    if-ne p0, v2, :cond_8

    return-object v1

    :cond_8
    const-class v1, Lj$/nio/file/attribute/B;

    if-ne p0, v1, :cond_9

    invoke-static {}, Lj$/adapter/b;->D()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lj$/adapter/b;->D()Ljava/lang/Class;

    move-result-object v2

    if-ne p0, v2, :cond_a

    return-object v1

    :cond_a
    const-class v1, Lj$/nio/file/attribute/a;

    if-ne p0, v1, :cond_b

    invoke-static {}, Lj$/adapter/b;->z()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {}, Lj$/adapter/b;->z()Ljava/lang/Class;

    move-result-object v2

    if-ne p0, v2, :cond_c

    return-object v1

    :cond_c
    const-string v1, "java.nio.file.attribute.FileAttributeView"

    invoke-static {v1, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v0
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lj$/adapter/b;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lj$/nio/file/attribute/BasicFileAttributes;

    if-ne p0, v1, :cond_1

    return-object v2

    :cond_1
    if-ne p0, v2, :cond_2

    invoke-static {}, Lj$/adapter/b;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lj$/adapter/b;->r()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lj$/nio/file/attribute/z;

    if-ne p0, v1, :cond_3

    return-object v2

    :cond_3
    if-ne p0, v2, :cond_4

    invoke-static {}, Lj$/adapter/b;->r()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_4
    const-class v1, Lj$/nio/file/attribute/i;

    if-ne p0, v1, :cond_5

    invoke-static {}, Lj$/adapter/b;->v()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lj$/adapter/b;->v()Ljava/lang/Class;

    move-result-object v2

    if-ne p0, v2, :cond_6

    return-object v1

    :cond_6
    const-string v1, "java.nio.file.attribute.BasicFileAttributes"

    invoke-static {v1, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v0
.end method

.method public static e(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/nio/file/m;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lj$/adapter/b;->p(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "java.nio.file.attribute.FileTime"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lj$/adapter/b;->i(Ljava/lang/Object;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lj$/nio/file/attribute/n;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/w;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v2, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v1

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/w;

    if-eqz v0, :cond_1

    :try_start_1
    check-cast p0, Lj$/nio/file/attribute/w;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0}, Lj$/nio/file/attribute/n;->d(Lj$/nio/file/attribute/w;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {v2, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v1

    :cond_1
    return-object p0
.end method

.method public static g(Ljava/util/Set;)Ljava/util/Set;
    .locals 5

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lj$/nio/file/q;

    const/4 v3, 0x0

    const-string v4, "java.nio.file.OpenOption"

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    check-cast v1, Lj$/nio/file/q;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lj$/nio/file/p;->a(Lj$/nio/file/q;)Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v4, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v3

    :cond_1
    return-object v0

    :cond_2
    invoke-static {v1}, Lj$/adapter/b;->x(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lj$/adapter/b;->e(Ljava/lang/Object;)Ljava/nio/file/OpenOption;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1}, Lj$/nio/file/o;->a(Ljava/nio/file/OpenOption;)Lj$/nio/file/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v4, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v3

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v4, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v3

    :cond_5
    :goto_2
    return-object p0
.end method

.method public static h(Ljava/util/Set;)Ljava/util/Set;
    .locals 5

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lj$/nio/file/attribute/A;

    const-string v3, "java.nio.file.attribute.PosixFilePermission"

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    check-cast v1, Lj$/nio/file/attribute/A;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    sget-object v2, Lj$/nio/file/attribute/A;->OWNER_READ:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lj$/nio/file/attribute/r;->o()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v2, Lj$/nio/file/attribute/A;->OWNER_WRITE:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lj$/nio/file/attribute/r;->v()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v2, Lj$/nio/file/attribute/A;->OWNER_EXECUTE:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_4

    invoke-static {}, Lj$/nio/file/attribute/r;->x()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_4
    sget-object v2, Lj$/nio/file/attribute/A;->GROUP_READ:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_5

    invoke-static {}, Lj$/nio/file/attribute/r;->y()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v2, Lj$/nio/file/attribute/A;->GROUP_WRITE:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_6

    invoke-static {}, Lj$/nio/file/attribute/r;->z()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_6
    sget-object v2, Lj$/nio/file/attribute/A;->GROUP_EXECUTE:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_7

    invoke-static {}, Lj$/nio/file/attribute/r;->A()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget-object v2, Lj$/nio/file/attribute/A;->OTHERS_READ:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_8

    invoke-static {}, Lj$/nio/file/attribute/r;->B()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_8
    sget-object v2, Lj$/nio/file/attribute/A;->OTHERS_WRITE:Lj$/nio/file/attribute/A;

    if-ne v1, v2, :cond_9

    invoke-static {}, Lj$/nio/file/attribute/r;->C()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    goto :goto_1

    :cond_9
    invoke-static {}, Lj$/nio/file/attribute/r;->D()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v3, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v4

    :cond_a
    return-object v0

    :cond_b
    invoke-static {v1}, Lj$/adapter/b;->t(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lj$/adapter/b;->j(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_c

    move-object v1, v4

    goto :goto_3

    :cond_c
    invoke-static {}, Lj$/nio/file/attribute/r;->o()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_d

    sget-object v1, Lj$/nio/file/attribute/A;->OWNER_READ:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_d
    invoke-static {}, Lj$/nio/file/attribute/r;->v()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_e

    sget-object v1, Lj$/nio/file/attribute/A;->OWNER_WRITE:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_e
    invoke-static {}, Lj$/nio/file/attribute/r;->x()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_f

    sget-object v1, Lj$/nio/file/attribute/A;->OWNER_EXECUTE:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_f
    invoke-static {}, Lj$/nio/file/attribute/r;->y()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_10

    sget-object v1, Lj$/nio/file/attribute/A;->GROUP_READ:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_10
    invoke-static {}, Lj$/nio/file/attribute/r;->z()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_11

    sget-object v1, Lj$/nio/file/attribute/A;->GROUP_WRITE:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_11
    invoke-static {}, Lj$/nio/file/attribute/r;->A()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_12

    sget-object v1, Lj$/nio/file/attribute/A;->GROUP_EXECUTE:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_12
    invoke-static {}, Lj$/nio/file/attribute/r;->B()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_13

    sget-object v1, Lj$/nio/file/attribute/A;->OTHERS_READ:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_13
    invoke-static {}, Lj$/nio/file/attribute/r;->C()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    if-ne v1, v2, :cond_14

    sget-object v1, Lj$/nio/file/attribute/A;->OTHERS_WRITE:Lj$/nio/file/attribute/A;

    goto :goto_3

    :cond_14
    sget-object v1, Lj$/nio/file/attribute/A;->OTHERS_EXECUTE:Lj$/nio/file/attribute/A;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {v3, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v4

    :cond_15
    return-object v0

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v3, p0}, Lj$/util/e;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v4

    :cond_17
    :goto_4
    return-object p0
.end method

.method public static i()Lj$/nio/file/j;
    .locals 1

    sget-object v0, Lj$/nio/file/l;->a:Lj$/nio/file/j;

    return-object v0
.end method

.method public static synthetic j([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Lj$/nio/file/LinkOption;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static k([Ljava/nio/file/WatchEvent$Kind;)[Lj$/nio/file/J;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Lj$/nio/file/J;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lj$/nio/file/t;->h()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne v4, v5, :cond_2

    sget-object v4, Lj$/nio/file/m;->b:Lj$/nio/file/J;

    goto :goto_1

    :cond_2
    invoke-static {}, Lj$/nio/file/t;->q()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne v4, v5, :cond_3

    sget-object v4, Lj$/nio/file/m;->c:Lj$/nio/file/J;

    goto :goto_1

    :cond_3
    invoke-static {}, Lj$/nio/file/t;->u()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne v4, v5, :cond_4

    sget-object v4, Lj$/nio/file/m;->d:Lj$/nio/file/J;

    goto :goto_1

    :cond_4
    invoke-static {}, Lj$/nio/file/t;->x()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne v4, v5, :cond_5

    sget-object v4, Lj$/nio/file/m;->a:Lj$/nio/file/J;

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lj$/nio/file/H;->a(Ljava/nio/file/WatchEvent$Kind;)Lj$/nio/file/J;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method public static synthetic l([Lj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lj$/nio/file/g;->i()Ljava/nio/file/LinkOption;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static m([Lj$/nio/file/J;)[Ljava/nio/file/WatchEvent$Kind;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/nio/file/WatchEvent$Kind;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    sget-object v5, Lj$/nio/file/m;->b:Lj$/nio/file/J;

    if-ne v4, v5, :cond_2

    invoke-static {}, Lj$/nio/file/t;->h()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v4

    goto :goto_1

    :cond_2
    sget-object v5, Lj$/nio/file/m;->c:Lj$/nio/file/J;

    if-ne v4, v5, :cond_3

    invoke-static {}, Lj$/nio/file/t;->q()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v4

    goto :goto_1

    :cond_3
    sget-object v5, Lj$/nio/file/m;->d:Lj$/nio/file/J;

    if-ne v4, v5, :cond_4

    invoke-static {}, Lj$/nio/file/t;->u()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v4

    goto :goto_1

    :cond_4
    sget-object v5, Lj$/nio/file/m;->a:Lj$/nio/file/J;

    if-ne v4, v5, :cond_5

    invoke-static {}, Lj$/nio/file/t;->x()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lj$/nio/file/I;->a(Lj$/nio/file/J;)Ljava/nio/file/WatchEvent$Kind;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method
