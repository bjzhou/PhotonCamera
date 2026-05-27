.class public final Ldzv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static b:Ljava/util/concurrent/Executor;


# instance fields
.field public final c:Llbd;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/gl/GLGuardFactory"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldzv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llbd;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzv;->c:Llbd;

    iput-object p2, p0, Ldzv;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/AutoCloseable;)Ldzu;
    .locals 1

    new-instance v0, Ldzu;

    invoke-direct {v0, p0, p1}, Ldzu;-><init>(Ldzv;Ljava/lang/AutoCloseable;)V

    return-object v0
.end method
