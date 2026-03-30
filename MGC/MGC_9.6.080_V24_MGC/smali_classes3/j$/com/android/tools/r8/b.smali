.class public final synthetic Lj$/com/android/tools/r8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lsun/misc/Unsafe;

.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj$/com/android/tools/r8/b;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    iput-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Using a VarHandle for a field of type \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' requires native VarHandle support available from Android 13. VarHandle desugaring only supports primitive types int and long and reference types."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p1

    iput-wide p1, p0, Lj$/com/android/tools/r8/b;->c:J

    return-void
.end method

.method public static synthetic c()Ljava/lang/reflect/Field;
    .locals 7

    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Couldn\'t find the Unsafe"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic j(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "java.lang.invoke.WrongMethodTypeException"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic k(Ljava/lang/Object;)J
    .locals 2

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p3}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result v7

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->k(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {p3}, Lj$/com/android/tools/r8/b;->k(Ljava/lang/Object;)J

    move-result-wide v8

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lj$/com/android/tools/r8/a;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    iget-object v3, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(ILjava/lang/Object;)V
    .locals 8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    int-to-long v6, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lj$/com/android/tools/r8/b;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final synthetic e(Ljava/lang/Object;J)V
    .locals 8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "java.lang.invoke.WrongMethodTypeException"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lj$/com/android/tools/r8/b;->d(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->k(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lj$/com/android/tools/r8/b;->e(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final synthetic g(ILjava/lang/Object;)V
    .locals 8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    int-to-long v6, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lj$/com/android/tools/r8/b;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final synthetic h(Ljava/lang/Object;J)V
    .locals 8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "java.lang.invoke.WrongMethodTypeException"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lj$/com/android/tools/r8/b;->g(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->k(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lj$/com/android/tools/r8/b;->h(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lj$/com/android/tools/r8/b;->c:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final synthetic l(Lj$/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lj$/com/android/tools/r8/b;->b:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p3}, Lj$/com/android/tools/r8/b;->j(Ljava/lang/Object;)I

    move-result v7

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    iget-object v2, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    invoke-static {p2}, Lj$/com/android/tools/r8/b;->k(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-static {p3}, Lj$/com/android/tools/r8/b;->k(Ljava/lang/Object;)J

    move-result-wide v8

    iget-wide v4, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lj$/com/android/tools/r8/b;->a:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lj$/com/android/tools/r8/b;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lj$/com/android/tools/r8/a;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
