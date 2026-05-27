.class public final Ldzh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/ContentResolver;

.field public final c:Lkbc;

.field public final d:Ldhi;

.field public final e:Lhlc;

.field public final f:Lhlc;

.field public final g:Llpg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/gallery/specialtype/SpecialTypeMetadataHandler"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldzh;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lhlc;Lhlc;Lkbc;Llpg;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzh;->b:Landroid/content/ContentResolver;

    iput-object p2, p0, Ldzh;->e:Lhlc;

    iput-object p3, p0, Ldzh;->f:Lhlc;

    iput-object p4, p0, Ldzh;->c:Lkbc;

    iput-object p5, p0, Ldzh;->g:Llpg;

    iput-object p6, p0, Ldzh;->d:Ldhi;

    return-void
.end method
