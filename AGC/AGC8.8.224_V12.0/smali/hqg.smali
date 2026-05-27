.class public final Lhqg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/nio/FloatBuffer;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/nio/ShortBuffer;

.field public f:[I

.field public g:[I

.field public h:I

.field public final i:Ljpw;

.field private j:I


# direct methods
.method public constructor <init>(Ljpw;II[B[B[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    new-array p5, p4, [I

    iput-object p5, p0, Lhqg;->f:[I

    const/4 p5, 0x2

    new-array p6, p5, [I

    iput-object p6, p0, Lhqg;->g:[I

    const/4 p6, 0x0

    iput p6, p0, Lhqg;->h:I

    iput-object p1, p0, Lhqg;->i:Ljpw;

    iput p2, p0, Lhqg;->c:I

    iput p3, p0, Lhqg;->b:I

    const p1, 0x8b31

    const-string v0, "      attribute vec4 a_vertex;\n      varying vec2 o_texture;\n      void main() {\n        // Scale the position to [-1, 1]\n        gl_Position.xy = a_vertex.xy * 2.0 - 1.0;\n        gl_Position.z = 0.0;\n        gl_Position.w = 1.0;\n        o_texture = a_vertex.zw;\n      }"

    invoke-static {p1, v0}, Lhqg;->b(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    const-string v1, "      uniform sampler2D texture;\n      varying vec2 o_texture;\n      void main() {\n        vec3 val = texture2D(texture, o_texture).rgb;\n        gl_FragColor = vec4(val, 1.0);\n      }"

    invoke-static {v0, v1}, Lhqg;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lhqg;->j:I

    invoke-static {v1, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    iget p1, p0, Lhqg;->j:I

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    iget p1, p0, Lhqg;->j:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    iget p1, p0, Lhqg;->j:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glUseProgram(I)V

    iget-object p1, p0, Lhqg;->g:[I

    invoke-static {p5, p1, p6}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    iget-object p1, p0, Lhqg;->g:[I

    aget p1, p1, p6

    const p5, 0x88eb

    invoke-static {p5, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    mul-int/lit8 p2, p2, 0x4

    mul-int p2, p2, p3

    const/4 p1, 0x0

    const p3, 0x88e5

    invoke-static {p5, p2, p1, p3}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lhqg;->g:[I

    aget v0, v0, p4

    invoke-static {p5, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    invoke-static {p5, p2, p1, p3}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {p5, p6}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    iget-object p1, p0, Lhqg;->f:[I

    invoke-static {p4, p1, p6}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    iget-object p1, p0, Lhqg;->f:[I

    aget p1, p1, p6

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 p1, 0x2802

    const p3, 0x47012f00    # 33071.0f

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    const p3, 0x46180400    # 9729.0f

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES30;->glTexParameterf(IIF)V

    iget p1, p0, Lhqg;->j:I

    const-string p2, "a_vertex"

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lhqg;->d:I

    const/16 p1, 0x5ac

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0xb

    if-ge p2, p3, :cond_1

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_0

    mul-int/lit8 p5, p2, 0xc

    add-int/2addr p5, p4

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p4

    add-int/lit8 v2, v1, 0x1

    int-to-short p5, p5

    invoke-virtual {p1, p5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short p5, v0

    invoke-virtual {p1, p5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    int-to-short p5, v2

    invoke-virtual {p1, p5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iput-object p1, p0, Lhqg;->e:Ljava/nio/ShortBuffer;

    const/16 p1, 0x900

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lhqg;->a:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private static b(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result p0

    invoke-static {p0, p1}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lhqg;->h:I

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method
