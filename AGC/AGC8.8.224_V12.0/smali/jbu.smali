.class public final Ljbu;
.super Ljava/lang/Object;

# interfaces
.implements Ljbi;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Llox;

.field public static final c:Lj$/util/concurrent/ConcurrentHashMap;

.field static d:Ljava/lang/Boolean;

.field static e:Ljava/lang/Long;


# instance fields
.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ljbu;->a:Ljava/nio/charset/Charset;

    new-instance v0, Llox;

    const-string v1, "com.google.android.gms.clearcut.public"

    invoke-static {v1}, Llol;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Llox;-><init>(Landroid/net/Uri;)V

    iget-boolean v1, v0, Llox;->d:Z

    if-nez v1, :cond_0

    new-instance v1, Llox;

    iget-object v3, v0, Llox;->a:Landroid/net/Uri;

    iget-object v5, v0, Llox;->c:Ljava/lang/String;

    iget-boolean v7, v0, Llox;->e:Z

    iget-boolean v8, v0, Llox;->f:Z

    const-string v4, "gms:playlog:service:samplingrules_"

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Llox;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    new-instance v0, Llox;

    iget-object v10, v1, Llox;->a:Landroid/net/Uri;

    iget-object v11, v1, Llox;->b:Ljava/lang/String;

    iget-boolean v13, v1, Llox;->d:Z

    iget-boolean v14, v1, Llox;->e:Z

    iget-boolean v15, v1, Llox;->f:Z

    const-string v12, "LogSamplingRulesV2__"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Llox;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    sput-object v0, Ljbu;->b:Llox;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljbu;->c:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    sput-object v0, Ljbu;->d:Ljava/lang/Boolean;

    sput-object v0, Ljbu;->e:Ljava/lang/Long;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set GServices prefix and skip GServices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljbu;->f:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lloz;->h(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
