.class public final Lgqr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkpb;

.field public final b:Lkab;

.field public final c:Lnou;

.field public final d:Lhjc;

.field public final e:Landroid/graphics/Rect;

.field public final f:Lgya;

.field public final g:Lklv;

.field public final h:Lcom/google/android/libraries/camera/exif/ExifInterface;

.field public final i:Lgyq;

.field public final j:J

.field public final k:J

.field public final l:Ldrb;


# direct methods
.method public constructor <init>(Lkpb;Lgya;Lklv;Lkab;Lnou;Landroid/graphics/Rect;JJLgyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqr;->a:Lkpb;

    iput-object p2, p0, Lgqr;->f:Lgya;

    iput-object p3, p0, Lgqr;->g:Lklv;

    iput-object p4, p0, Lgqr;->b:Lkab;

    iput-object p5, p0, Lgqr;->c:Lnou;

    iput-object p6, p0, Lgqr;->e:Landroid/graphics/Rect;

    iput-wide p7, p0, Lgqr;->j:J

    iput-wide p9, p0, Lgqr;->k:J

    const/4 p1, 0x0

    iput-object p1, p0, Lgqr;->h:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iput-object p1, p0, Lgqr;->d:Lhjc;

    iput-object p11, p0, Lgqr;->i:Lgyq;

    iput-object p1, p0, Lgqr;->l:Ldrb;

    return-void
.end method

.method public static a(Lkpb;)Lgqq;
    .locals 1

    new-instance v0, Lgqq;

    invoke-direct {v0, p0}, Lgqq;-><init>(Lkpb;)V

    return-object v0
.end method

.method public static b(Lfws;)Lgqq;
    .locals 1

    new-instance v0, Lgqq;

    invoke-direct {v0, p0}, Lgqq;-><init>(Lkpb;)V

    invoke-virtual {p0}, Lfws;->k()Lnou;

    move-result-object p0

    iput-object p0, v0, Lgqq;->d:Lnou;

    return-object v0
.end method

.method public static c(Lkpb;Lgqr;)Lgqr;
    .locals 3

    new-instance v0, Lgqq;

    invoke-direct {v0, p0}, Lgqq;-><init>(Lkpb;)V

    iget-object p0, p1, Lgqr;->g:Lklv;

    iput-object p0, v0, Lgqq;->a:Lklv;

    iget-object p0, p1, Lgqr;->f:Lgya;

    iput-object p0, v0, Lgqq;->b:Lgya;

    iget-object p0, p1, Lgqr;->b:Lkab;

    iput-object p0, v0, Lgqq;->c:Lkab;

    iget-object p0, p1, Lgqr;->c:Lnou;

    iput-object p0, v0, Lgqq;->d:Lnou;

    iget-object p0, p1, Lgqr;->i:Lgyq;

    iput-object p0, v0, Lgqq;->g:Lgyq;

    iget-object p0, p1, Lgqr;->e:Landroid/graphics/Rect;

    iput-object p0, v0, Lgqq;->e:Landroid/graphics/Rect;

    iget-object p0, p1, Lgqr;->h:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object p0, p1, Lgqr;->d:Lhjc;

    iget-wide v1, p1, Lgqr;->k:J

    invoke-virtual {v0, v1, v2}, Lgqq;->b(J)V

    iget-wide p0, p1, Lgqr;->j:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lgqq;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Lgqq;->a()Lgqr;

    move-result-object p0

    return-object p0
.end method
