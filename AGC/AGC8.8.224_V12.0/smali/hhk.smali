.class public final Lhhk;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcrl;

.field public final c:Lhib;

.field public final d:I

.field public final e:I

.field public f:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final g:Ljuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/speechenhancer/SpeechEnhancerAudioProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhhk;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lhib;IILcrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhk;->c:Lhib;

    iput p2, p0, Lhhk;->e:I

    iput p3, p0, Lhhk;->d:I

    iput-object p4, p0, Lhhk;->b:Lcrl;

    new-instance p2, Ljuf;

    invoke-direct {p2}, Ljuf;-><init>()V

    iput-object p2, p0, Lhhk;->g:Ljuf;

    new-instance p3, Lhhj;

    invoke-direct {p3, p0}, Lhhj;-><init>(Lhhk;)V

    invoke-interface {p1, p3}, Lhib;->a(Lhia;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lhhk;->g:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method
