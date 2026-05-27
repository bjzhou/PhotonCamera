.class public final Llmp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Loiw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/persistent/PersistentStorage"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llmp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmp;->b:Landroid/content/Context;

    iput-object p2, p0, Llmp;->c:Loiw;

    return-void
.end method
