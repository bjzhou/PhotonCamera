.class public final Ldzl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static b:I


# instance fields
.field public final c:Lkbc;

.field public final d:Ldzn;

.field public final e:Ldym;

.field public final f:Ldzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/gallery/thumbnail/ProcessingThumbnailLoaderImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldzl;->a:Lnak;

    const/4 v0, -0x1

    sput v0, Ldzl;->b:I

    return-void
.end method

.method public constructor <init>(Ldym;Lkbc;Ldzn;Ldzn;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzl;->e:Ldym;

    iput-object p2, p0, Ldzl;->c:Lkbc;

    iput-object p3, p0, Ldzl;->d:Ldzn;

    iput-object p4, p0, Ldzl;->f:Ldzn;

    return-void
.end method
