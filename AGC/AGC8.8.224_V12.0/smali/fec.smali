.class public final Lfec;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/metadata/VideoRotationMetadataLoader"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfec;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->f()V

    iput-object p2, p0, Lfec;->b:Landroid/content/Context;

    return-void
.end method
